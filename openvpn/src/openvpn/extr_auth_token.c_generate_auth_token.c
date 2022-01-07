
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
typedef char uint64_t ;
typedef int timestamp ;
struct user_pass {char* username; } ;
struct TYPE_3__ {int * hmac; } ;
struct TYPE_4__ {TYPE_1__ auth_token_key; } ;
struct tls_multi {char* auth_token; int auth_token_state_flags; TYPE_2__ opt; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;
typedef int sessid ;
typedef char int64_t ;
typedef int initial_timestamp ;
typedef int hmac_output ;
typedef int hmac_ctx_t ;


 int ASSERT (int) ;
 int AUTH_TOKEN_SESSION_ID_LEN ;
 int AUTH_TOKEN_VALID_EMPTYUSER ;
 int BLEN (struct buffer*) ;
 scalar_t__ BPTR (struct buffer*) ;
 int D_SHOW_KEYS ;
 int M_FATAL ;
 char* SESSION_ID_PREFIX ;
 struct buffer alloc_buf_gc (int,struct gc_arena*) ;
 int buf_write (struct buffer*,char*,int) ;
 int buf_write_u8 (struct buffer*,int ) ;
 int dmsg (int ,char*,char*,char*) ;
 int free (char*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int hmac_ctx_final (int *,char*) ;
 int hmac_ctx_reset (int *) ;
 int hmac_ctx_size (int *) ;
 int hmac_ctx_update (int *,char const*,int) ;
 char htonll (char) ;
 int msg (int ,char*) ;
 scalar_t__ now ;
 int openvpn_base64_decode (char*,char*,int) ;
 int openvpn_base64_encode (scalar_t__,int ,char**) ;
 int rand_bytes (char*,int) ;
 char* strdup (char*) ;
 int strlen (char*) ;

void
generate_auth_token(const struct user_pass *up, struct tls_multi *multi)
{
    struct gc_arena gc = gc_new();

    int64_t timestamp = htonll((uint64_t)now);
    int64_t initial_timestamp = timestamp;

    hmac_ctx_t *ctx = multi->opt.auth_token_key.hmac;
    ASSERT(hmac_ctx_size(ctx) == 256/8);

    uint8_t sessid[AUTH_TOKEN_SESSION_ID_LEN];

    if (multi->auth_token)
    {




        char old_tstamp_decode[9];





        char *old_sessid = multi->auth_token + strlen(SESSION_ID_PREFIX);
        char *old_tsamp_initial = old_sessid + AUTH_TOKEN_SESSION_ID_LEN*8/6;

        old_tsamp_initial[12] = '\0';
        ASSERT(openvpn_base64_decode(old_tsamp_initial, old_tstamp_decode, 9) == 9);






        uint64_t *tstamp_ptr = (uint64_t *) old_tstamp_decode;
        initial_timestamp = *tstamp_ptr;

        old_tsamp_initial[0] = '\0';
        ASSERT(openvpn_base64_decode(old_sessid, sessid, AUTH_TOKEN_SESSION_ID_LEN)==AUTH_TOKEN_SESSION_ID_LEN);



        free(multi->auth_token);
    }
    else if (!rand_bytes(sessid, AUTH_TOKEN_SESSION_ID_LEN))
    {
        msg( M_FATAL, "Failed to get enough randomness for "
             "authentication token");
    }






    uint8_t hmac_output[256/8];

    hmac_ctx_reset(ctx);






    if (multi->auth_token_state_flags & AUTH_TOKEN_VALID_EMPTYUSER)
    {
        hmac_ctx_update(ctx, (const uint8_t *) "", 0);
    }
    else
    {
        hmac_ctx_update(ctx, (uint8_t *) up->username, (int) strlen(up->username));
    }
    hmac_ctx_update(ctx, sessid, AUTH_TOKEN_SESSION_ID_LEN);
    hmac_ctx_update(ctx, (uint8_t *) &initial_timestamp, sizeof(initial_timestamp));
    hmac_ctx_update(ctx, (uint8_t *) &timestamp, sizeof(timestamp));
    hmac_ctx_final(ctx, hmac_output);


    struct buffer token = alloc_buf_gc(
        2*sizeof(uint64_t) + AUTH_TOKEN_SESSION_ID_LEN + 256/8, &gc);

    ASSERT(buf_write(&token, sessid, sizeof(sessid)));
    ASSERT(buf_write(&token, &initial_timestamp, sizeof(initial_timestamp)));
    ASSERT(buf_write(&token, &timestamp, sizeof(timestamp)));
    ASSERT(buf_write(&token, hmac_output, sizeof(hmac_output)));

    char *b64output;
    openvpn_base64_encode(BPTR(&token), BLEN(&token), &b64output);

    struct buffer session_token = alloc_buf_gc(
        strlen(SESSION_ID_PREFIX) + strlen(b64output) + 1, &gc);

    ASSERT(buf_write(&session_token, SESSION_ID_PREFIX, strlen(SESSION_ID_PREFIX)));
    ASSERT(buf_write(&session_token, b64output, (int)strlen(b64output)));
    ASSERT(buf_write_u8(&session_token, 0));

    free(b64output);

    multi->auth_token = strdup((char *)BPTR(&session_token));

    dmsg(D_SHOW_KEYS, "Generated token for client: %s (%s)",
         multi->auth_token, up->username);

    gc_free(&gc);
}
