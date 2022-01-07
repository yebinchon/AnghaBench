
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int tls_crypt_v2_inline; scalar_t__ tls_crypt_v2_file; int tls_crypt_inline; scalar_t__ tls_crypt_file; int key_direction; int tls_auth_file_inline; scalar_t__ tls_auth_file; } ;
struct options {TYPE_3__ ce; scalar_t__ tls_server; int authname; } ;
struct TYPE_9__ {int digest; int hmac_length; } ;
struct TYPE_6__ {int tls_crypt_v2_wkc; int tls_wrap_key; int tls_crypt_v2_server_key; TYPE_4__ tls_auth_key_type; } ;
struct TYPE_7__ {TYPE_1__ ks; } ;
struct context {TYPE_2__ c1; struct options options; } ;


 int CLEAR (TYPE_4__) ;
 int M_FATAL ;
 int crypto_read_openvpn_key (TYPE_4__*,int *,scalar_t__,int ,int ,char*,char*) ;
 int md_kt_get (int ) ;
 int md_kt_size (int ) ;
 int msg (int ,char*,int ) ;
 int streq (int ,char*) ;
 int tls_crypt_init_key (int *,scalar_t__,int ,scalar_t__) ;
 int tls_crypt_v2_init_client_key (int *,int *,scalar_t__,int ) ;
 int tls_crypt_v2_init_server_key (int *,int,scalar_t__,int ) ;

__attribute__((used)) static void
do_init_tls_wrap_key(struct context *c)
{
    const struct options *options = &c->options;


    if (options->ce.tls_auth_file)
    {

        CLEAR(c->c1.ks.tls_auth_key_type);
        if (!streq(options->authname, "none"))
        {
            c->c1.ks.tls_auth_key_type.digest = md_kt_get(options->authname);
            c->c1.ks.tls_auth_key_type.hmac_length =
                md_kt_size(c->c1.ks.tls_auth_key_type.digest);
        }
        else
        {
            msg(M_FATAL, "ERROR: tls-auth enabled, but no valid --auth "
                "algorithm specified ('%s')", options->authname);
        }

        crypto_read_openvpn_key(&c->c1.ks.tls_auth_key_type,
                                &c->c1.ks.tls_wrap_key,
                                options->ce.tls_auth_file,
                                options->ce.tls_auth_file_inline,
                                options->ce.key_direction,
                                "Control Channel Authentication", "tls-auth");
    }


    if (options->ce.tls_crypt_file)
    {
        tls_crypt_init_key(&c->c1.ks.tls_wrap_key,
                           options->ce.tls_crypt_file,
                           options->ce.tls_crypt_inline, options->tls_server);
    }


    if (options->ce.tls_crypt_v2_file)
    {
        if (options->tls_server)
        {
            tls_crypt_v2_init_server_key(&c->c1.ks.tls_crypt_v2_server_key,
                                         1, options->ce.tls_crypt_v2_file,
                                         options->ce.tls_crypt_v2_inline);
        }
        else
        {
            tls_crypt_v2_init_client_key(&c->c1.ks.tls_wrap_key,
                                         &c->c1.ks.tls_crypt_v2_wkc,
                                         options->ce.tls_crypt_v2_file,
                                         options->ce.tls_crypt_v2_inline);
        }
    }


}
