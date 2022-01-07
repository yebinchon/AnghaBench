
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;



__attribute__((used)) static void uint64_clear(ASN1_VALUE **pval, const ASN1_ITEM *it)
{
    **(uint64_t **)pval = 0;
}
