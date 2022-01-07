
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ version; } ;
typedef TYPE_1__ SSL ;


 scalar_t__ TLS1_3_VERSION ;
 int tls13_export_keying_material_early (TYPE_1__*,unsigned char*,size_t,char const*,size_t,unsigned char const*,size_t) ;

int SSL_export_keying_material_early(SSL *s, unsigned char *out, size_t olen,
                                     const char *label, size_t llen,
                                     const unsigned char *context,
                                     size_t contextlen)
{
    if (s->version != TLS1_3_VERSION)
        return 0;

    return tls13_export_keying_material_early(s, out, olen, label, llen,
                                              context, contextlen);
}
