
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plugin_return {int dummy; } ;
struct plugin_list {int dummy; } ;
struct env_set {int dummy; } ;
struct argv {int dummy; } ;
typedef int openvpn_x509_cert_t ;



__attribute__((used)) static inline int
plugin_call_ssl(const struct plugin_list *pl,
                const int type,
                const struct argv *av,
                struct plugin_return *pr,
                struct env_set *es,
                int current_cert_depth,
                openvpn_x509_cert_t *current_cert
                )
{
    return 0;
}
