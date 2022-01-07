
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ cipher; } ;
struct tls_wrap_ctx {scalar_t__ mode; TYPE_1__ tls_crypt_v2_server_key; int opt; } ;
struct tls_options {int dummy; } ;
struct link_socket_actual {int dummy; } ;
struct gc_arena {int dummy; } ;
struct buffer {int offset; int len; } ;


 int ASSERT (int ) ;
 scalar_t__* BPTR (struct buffer*) ;
 int D_TLS_ERRORS ;
 scalar_t__ const P_CONTROL_HARD_RESET_CLIENT_V3 ;
 scalar_t__ P_OPCODE_SHIFT ;
 scalar_t__ SID_SIZE ;
 scalar_t__ TLS_WRAP_AUTH ;
 scalar_t__ TLS_WRAP_CRYPT ;
 scalar_t__ TLS_WRAP_NONE ;
 struct buffer alloc_buf_gc (int ,struct gc_arena*) ;
 int buf_advance (struct buffer*,scalar_t__) ;
 int buf_clear (struct buffer*) ;
 int buf_copy (struct buffer*,struct buffer*) ;
 int buf_forward_capacity_total (struct buffer*) ;
 int buf_init (struct buffer*,int ) ;
 struct buffer clear_buf () ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int ,char*,int ) ;
 int openvpn_decrypt (struct buffer*,struct buffer,int *,int *,scalar_t__*) ;
 int print_link_socket_actual (struct link_socket_actual const*,struct gc_arena*) ;
 int swap_hmac (struct buffer*,int *,int) ;
 int tls_crypt_unwrap (struct buffer*,struct buffer*,int *) ;
 int tls_crypt_v2_extract_client_key (struct buffer*,struct tls_wrap_ctx*,struct tls_options const*) ;

__attribute__((used)) static bool
read_control_auth(struct buffer *buf,
                  struct tls_wrap_ctx *ctx,
                  const struct link_socket_actual *from,
                  const struct tls_options *opt)
{
    struct gc_arena gc = gc_new();
    bool ret = 0;

    const uint8_t opcode = *(BPTR(buf)) >> P_OPCODE_SHIFT;
    if (opcode == P_CONTROL_HARD_RESET_CLIENT_V3
        && !tls_crypt_v2_extract_client_key(buf, ctx, opt))
    {
        msg(D_TLS_ERRORS,
            "TLS Error: can not extract tls-crypt-v2 client key from %s",
            print_link_socket_actual(from, &gc));
        goto cleanup;
    }

    if (ctx->mode == TLS_WRAP_AUTH)
    {
        struct buffer null = clear_buf();


        if (!swap_hmac(buf, &ctx->opt, 1))
        {
            msg(D_TLS_ERRORS,
                "TLS Error: cannot locate HMAC in incoming packet from %s",
                print_link_socket_actual(from, &gc));
            gc_free(&gc);
            return 0;
        }



        openvpn_decrypt(buf, null, &ctx->opt, ((void*)0), BPTR(buf));
        if (!buf->len)
        {
            msg(D_TLS_ERRORS,
                "TLS Error: incoming packet authentication failed from %s",
                print_link_socket_actual(from, &gc));
            goto cleanup;
        }

    }
    else if (ctx->mode == TLS_WRAP_CRYPT)
    {
        struct buffer tmp = alloc_buf_gc(buf_forward_capacity_total(buf), &gc);
        if (!tls_crypt_unwrap(buf, &tmp, &ctx->opt))
        {
            msg(D_TLS_ERRORS, "TLS Error: tls-crypt unwrapping failed from %s",
                print_link_socket_actual(from, &gc));
            goto cleanup;
        }
        ASSERT(buf_init(buf, buf->offset));
        ASSERT(buf_copy(buf, &tmp));
        buf_clear(&tmp);
    }
    else if (ctx->tls_crypt_v2_server_key.cipher)
    {

        msg(D_TLS_ERRORS, "TLS Error: could not determine wrapping from %s",
            print_link_socket_actual(from, &gc));





        goto cleanup;
    }

    if (ctx->mode == TLS_WRAP_NONE || ctx->mode == TLS_WRAP_AUTH)
    {


        buf_advance(buf, SID_SIZE + 1);
    }

    ret = 1;
cleanup:
    gc_free(&gc);
    return ret;
}
