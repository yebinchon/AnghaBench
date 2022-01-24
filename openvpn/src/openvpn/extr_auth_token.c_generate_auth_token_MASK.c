#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  char uint64_t ;
typedef  int /*<<< orphan*/  timestamp ;
struct user_pass {char* username; } ;
struct TYPE_3__ {int /*<<< orphan*/ * hmac; } ;
struct TYPE_4__ {TYPE_1__ auth_token_key; } ;
struct tls_multi {char* auth_token; int auth_token_state_flags; TYPE_2__ opt; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;
typedef  int /*<<< orphan*/  sessid ;
typedef  char int64_t ;
typedef  int /*<<< orphan*/  initial_timestamp ;
typedef  int /*<<< orphan*/  hmac_output ;
typedef  int /*<<< orphan*/  hmac_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int AUTH_TOKEN_SESSION_ID_LEN ; 
 int AUTH_TOKEN_VALID_EMPTYUSER ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*) ; 
 scalar_t__ FUNC2 (struct buffer*) ; 
 int /*<<< orphan*/  D_SHOW_KEYS ; 
 int /*<<< orphan*/  M_FATAL ; 
 char* SESSION_ID_PREFIX ; 
 struct buffer FUNC3 (int,struct gc_arena*) ; 
 int FUNC4 (struct buffer*,char*,int) ; 
 int FUNC5 (struct buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct gc_arena*) ; 
 struct gc_arena FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const*,int) ; 
 char FUNC14 (char) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ now ; 
 int FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 
 char* FUNC19 (char*) ; 
 int FUNC20 (char*) ; 

void
FUNC21(const struct user_pass *up, struct tls_multi *multi)
{
    struct gc_arena gc = FUNC9();

    int64_t timestamp = FUNC14((uint64_t)now);
    int64_t initial_timestamp = timestamp;

    hmac_ctx_t *ctx = multi->opt.auth_token_key.hmac;
    FUNC0(FUNC12(ctx) == 256/8);

    uint8_t sessid[AUTH_TOKEN_SESSION_ID_LEN];

    if (multi->auth_token)
    {
        /* Just enough space to fit 8 bytes+ 1 extra to decode a non padded
         * base64 string (multiple of 3 bytes). 9 bytes => 12 bytes base64
         * bytes
         */
        char old_tstamp_decode[9];

        /*
         * reuse the same session id and timestamp and null terminate it at
         * for base64 decode it only decodes the session id part of it
         */
        char *old_sessid = multi->auth_token + FUNC20(SESSION_ID_PREFIX);
        char *old_tsamp_initial = old_sessid + AUTH_TOKEN_SESSION_ID_LEN*8/6;

        old_tsamp_initial[12] = '\0';
        FUNC0(FUNC16(old_tsamp_initial, old_tstamp_decode, 9) == 9);

        /*
         * Avoid old gcc (4.8.x) complaining about strict aliasing
         * by using a temporary variable instead of doing it in one
         * line
         */
        uint64_t *tstamp_ptr = (uint64_t *) old_tstamp_decode;
        initial_timestamp = *tstamp_ptr;

        old_tsamp_initial[0] = '\0';
        FUNC0(FUNC16(old_sessid, sessid, AUTH_TOKEN_SESSION_ID_LEN)==AUTH_TOKEN_SESSION_ID_LEN);


        /* free the auth-token, we will replace it with a new one */
        FUNC7(multi->auth_token);
    }
    else if (!FUNC18(sessid, AUTH_TOKEN_SESSION_ID_LEN))
    {
        FUNC15( M_FATAL, "Failed to get enough randomness for "
             "authentication token");
    }

    /* Calculate the HMAC */
    /* We enforce up->username to be \0 terminated in ssl.c.. Allowing username
     * with \0 in them is asking for troubles in so many ways anyway that we
     * ignore that corner case here
     */
    uint8_t hmac_output[256/8];

    FUNC11(ctx);

    /*
     * If the token was only valid for the empty user, also generate
     * a new token with the empty username since we do not want to loose
     * the information that the username cannot be trusted
     */
    if (multi->auth_token_state_flags & AUTH_TOKEN_VALID_EMPTYUSER)
    {
        FUNC13(ctx, (const uint8_t *) "", 0);
    }
    else
    {
        FUNC13(ctx, (uint8_t *) up->username, (int) FUNC20(up->username));
    }
    FUNC13(ctx, sessid, AUTH_TOKEN_SESSION_ID_LEN);
    FUNC13(ctx, (uint8_t *) &initial_timestamp, sizeof(initial_timestamp));
    FUNC13(ctx, (uint8_t *) &timestamp, sizeof(timestamp));
    FUNC10(ctx, hmac_output);

    /* Construct the unencoded session token */
    struct buffer token = FUNC3(
        2*sizeof(uint64_t) + AUTH_TOKEN_SESSION_ID_LEN + 256/8, &gc);

    FUNC0(FUNC4(&token, sessid, sizeof(sessid)));
    FUNC0(FUNC4(&token, &initial_timestamp, sizeof(initial_timestamp)));
    FUNC0(FUNC4(&token, &timestamp, sizeof(timestamp)));
    FUNC0(FUNC4(&token, hmac_output, sizeof(hmac_output)));

    char *b64output;
    FUNC17(FUNC2(&token), FUNC1(&token), &b64output);

    struct buffer session_token = FUNC3(
        FUNC20(SESSION_ID_PREFIX) + FUNC20(b64output) + 1, &gc);

    FUNC0(FUNC4(&session_token, SESSION_ID_PREFIX, FUNC20(SESSION_ID_PREFIX)));
    FUNC0(FUNC4(&session_token, b64output, (int)FUNC20(b64output)));
    FUNC0(FUNC5(&session_token, 0));

    FUNC7(b64output);

    multi->auth_token = FUNC19((char *)FUNC2(&session_token));

    FUNC6(D_SHOW_KEYS, "Generated token for client: %s (%s)",
         multi->auth_token, up->username);

    FUNC8(&gc);
}