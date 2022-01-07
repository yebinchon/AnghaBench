
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASN1_PCTX_free (int ) ;
 int pctx ;

void FuzzerCleanup(void)
{
    ASN1_PCTX_free(pctx);
}
