
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poly1305_data_st {int poly1305; } ;


 int Poly1305_Update (int *,unsigned char const*,size_t) ;

__attribute__((used)) static int poly1305_update(void *vmacctx, const unsigned char *data,
                       size_t datalen)
{
    struct poly1305_data_st *ctx = vmacctx;


    Poly1305_Update(&ctx->poly1305, data, datalen);
    return 1;
}
