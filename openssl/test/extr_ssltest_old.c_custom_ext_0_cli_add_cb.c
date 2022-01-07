
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 unsigned int CUSTOM_EXT_TYPE_0 ;
 int custom_ext_error ;

__attribute__((used)) static int custom_ext_0_cli_add_cb(SSL *s, unsigned int ext_type,
                                   const unsigned char **out,
                                   size_t *outlen, int *al, void *arg)
{
    if (ext_type != CUSTOM_EXT_TYPE_0)
        custom_ext_error = 1;
    return 0;
}
