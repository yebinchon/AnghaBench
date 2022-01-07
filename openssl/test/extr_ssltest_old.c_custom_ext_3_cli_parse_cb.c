
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 unsigned int CUSTOM_EXT_TYPE_3 ;
 int custom_ext_error ;
 int custom_ext_srv_string ;
 scalar_t__ memcmp (int ,unsigned char const*,size_t) ;
 size_t strlen (int ) ;

__attribute__((used)) static int custom_ext_3_cli_parse_cb(SSL *s, unsigned int ext_type,
                                     const unsigned char *in,
                                     size_t inlen, int *al, void *arg)
{
    if (ext_type != CUSTOM_EXT_TYPE_3)
        custom_ext_error = 1;
    if (inlen != strlen(custom_ext_srv_string))
        custom_ext_error = 1;
    if (memcmp(custom_ext_srv_string, in, inlen) != 0)
        custom_ext_error = 1;
    return 1;
}
