
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tls_session {TYPE_3__* opt; int verified; struct key_state* key; } ;
struct TYPE_4__ {int decrypt; } ;
struct TYPE_5__ {TYPE_1__ key_ctx_bi; } ;
struct key_state {int authenticated; TYPE_2__ crypto_options; } ;
struct key {int dummy; } ;
struct buffer {int len; } ;
typedef int key ;
struct TYPE_6__ {int key_method; int key_type; int remote_options; int disable_occ; } ;


 int ASSERT (int) ;
 scalar_t__ BPTR (struct buffer*) ;
 int D_TLS_ERRORS ;
 size_t KS_PRIMARY ;
 int OPENVPN_OP_DECRYPT ;
 int buf_clear (struct buffer*) ;
 int check_key (struct key*,int *) ;
 int init_key_ctx (int *,struct key*,int *,int ,char*) ;
 int msg (int ,char*) ;
 int options_cmp_equal_safe (char*,int ,int) ;
 int options_warning_safe (char*,int ,int) ;
 int read_key (struct key*,int *,struct buffer*) ;
 int secure_memzero (struct key*,int) ;

__attribute__((used)) static bool
key_method_1_read(struct buffer *buf, struct tls_session *session)
{
    int status;
    struct key key;
    struct key_state *ks = &session->key[KS_PRIMARY];

    ASSERT(session->opt->key_method == 1);

    if (!session->verified)
    {
        msg(D_TLS_ERRORS,
            "TLS Error: Certificate verification failed (key-method 1)");
        goto error;
    }

    status = read_key(&key, &session->opt->key_type, buf);
    if (status != 1)
    {
        msg(D_TLS_ERRORS,
            "TLS Error: Error reading data channel key from plaintext buffer");
        goto error;
    }

    if (!check_key(&key, &session->opt->key_type))
    {
        msg(D_TLS_ERRORS, "TLS Error: Bad decrypting key received from peer");
        goto error;
    }

    if (buf->len < 1)
    {
        msg(D_TLS_ERRORS, "TLS Error: Missing options string");
        goto error;
    }
    buf_clear(buf);

    init_key_ctx(&ks->crypto_options.key_ctx_bi.decrypt, &key,
                 &session->opt->key_type, OPENVPN_OP_DECRYPT,
                 "Data Channel Decrypt");
    secure_memzero(&key, sizeof(key));
    ks->authenticated = 1;
    return 1;

error:
    buf_clear(buf);
    secure_memzero(&key, sizeof(key));
    return 0;
}
