
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tls_session {TYPE_3__* opt; struct key_state* key; } ;
struct TYPE_4__ {int encrypt; } ;
struct TYPE_5__ {TYPE_1__ key_ctx_bi; } ;
struct key_state {TYPE_2__ crypto_options; } ;
struct key {int dummy; } ;
struct buffer {int dummy; } ;
typedef int key ;
struct TYPE_6__ {int key_method; int key_type; } ;


 int ASSERT (int) ;
 int D_TLS_ERRORS ;
 size_t KS_PRIMARY ;
 int OPENVPN_OP_ENCRYPT ;
 int buf_init (struct buffer*,int ) ;
 int buf_write (struct buffer*,char const*,int const) ;
 int check_key (struct key*,int *) ;
 int generate_key_random (struct key*,int *) ;
 int init_key_ctx (int *,struct key*,int *,int ,char*) ;
 char* local_options_string (struct tls_session*) ;
 int msg (int ,char*) ;
 int secure_memzero (struct key*,int) ;
 int strlen (char const*) ;
 int write_key (struct key*,int *,struct buffer*) ;

__attribute__((used)) static bool
key_method_1_write(struct buffer *buf, struct tls_session *session)
{
    struct key key;
    struct key_state *ks = &session->key[KS_PRIMARY];

    ASSERT(session->opt->key_method == 1);
    ASSERT(buf_init(buf, 0));

    generate_key_random(&key, &session->opt->key_type);
    if (!check_key(&key, &session->opt->key_type))
    {
        msg(D_TLS_ERRORS, "TLS Error: Bad encrypting key generated");
        return 0;
    }

    if (!write_key(&key, &session->opt->key_type, buf))
    {
        msg(D_TLS_ERRORS, "TLS Error: write_key failed");
        return 0;
    }

    init_key_ctx(&ks->crypto_options.key_ctx_bi.encrypt, &key,
                 &session->opt->key_type, OPENVPN_OP_ENCRYPT,
                 "Data Channel Encrypt");
    secure_memzero(&key, sizeof(key));


    {
        const char *local_options = local_options_string(session);
        const int optlen = strlen(local_options) + 1;
        if (!buf_write(buf, local_options, optlen))
        {
            msg(D_TLS_ERRORS, "TLS Error: KM1 write options failed");
            return 0;
        }
    }

    return 1;
}
