
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmac_data_st {size_t out_len; } ;



__attribute__((used)) static size_t kmac_size(void *vmacctx)
{
    struct kmac_data_st *kctx = vmacctx;

    return kctx->out_len;
}
