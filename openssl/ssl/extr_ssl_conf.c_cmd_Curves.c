
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CONF_CTX ;


 int cmd_Groups (int *,char const*) ;

__attribute__((used)) static int cmd_Curves(SSL_CONF_CTX *cctx, const char *value)
{
    return cmd_Groups(cctx, value);
}
