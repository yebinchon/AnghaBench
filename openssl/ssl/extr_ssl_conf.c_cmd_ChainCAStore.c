
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CONF_CTX ;


 int do_store (int *,int *,int *,char const*,int ) ;

__attribute__((used)) static int cmd_ChainCAStore(SSL_CONF_CTX *cctx, const char *value)
{
    return do_store(cctx, ((void*)0), ((void*)0), value, 0);
}
