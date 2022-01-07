
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_type {int dummy; } ;
struct key_direction_state {int need_keys; } ;
struct key_ctx_bi {int dummy; } ;
struct key2 {int n; } ;
typedef int key2 ;


 int M_ERR ;
 int RKF_INLINE ;
 int RKF_MUST_SUCCEED ;
 int init_key_ctx_bi (struct key_ctx_bi*,struct key2*,int const,struct key_type const*,char const*) ;
 int key_direction_state_init (struct key_direction_state*,int const) ;
 int msg (int ,char*,char const*) ;
 int must_have_n_keys (char const*,char const*,struct key2*,int ) ;
 int read_key_file (struct key2*,char const*,int) ;
 int secure_memzero (struct key2*,int) ;
 int verify_fix_key2 (struct key2*,struct key_type const*,char const*) ;

void
crypto_read_openvpn_key(const struct key_type *key_type,
                        struct key_ctx_bi *ctx, const char *key_file, const char *key_inline,
                        const int key_direction, const char *key_name, const char *opt_name)
{
    struct key2 key2;
    struct key_direction_state kds;

    if (key_inline)
    {
        read_key_file(&key2, key_inline, RKF_MUST_SUCCEED|RKF_INLINE);
    }
    else
    {
        read_key_file(&key2, key_file, RKF_MUST_SUCCEED);
    }

    if (key2.n != 2)
    {
        msg(M_ERR, "File '%s' does not have OpenVPN Static Key format.  Using "
            "free-form passphrase file is not supported anymore.", key_file);
    }


    verify_fix_key2(&key2, key_type, key_file);


    key_direction_state_init(&kds, key_direction);
    must_have_n_keys(key_file, opt_name, &key2, kds.need_keys);


    init_key_ctx_bi(ctx, &key2, key_direction, key_type, key_name);
    secure_memzero(&key2, sizeof(key2));
}
