
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ifx_deu_des (void*,int *,int const*,int *,size_t,int,int) ;

void ifx_deu_des_ofb (void *ctx, uint8_t *dst, const uint8_t *src,
                uint8_t *iv, size_t nbytes, int encdec, int inplace)
{
     ifx_deu_des (ctx, dst, src, iv, nbytes, encdec, 2);
}
