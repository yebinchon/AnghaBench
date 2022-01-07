
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 scalar_t__ custom_ext_srv_string ;
 size_t strlen (scalar_t__) ;

__attribute__((used)) static int custom_ext_3_srv_add_cb(SSL *s, unsigned int ext_type,
                                   const unsigned char **out,
                                   size_t *outlen, int *al, void *arg)
{
    *out = (const unsigned char *)custom_ext_srv_string;
    *outlen = strlen(custom_ext_srv_string);
    return 1;
}
