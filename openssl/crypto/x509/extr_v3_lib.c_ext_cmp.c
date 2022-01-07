
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ext_nid; } ;
typedef TYPE_1__ X509V3_EXT_METHOD ;



__attribute__((used)) static int ext_cmp(const X509V3_EXT_METHOD *const *a,
                   const X509V3_EXT_METHOD *const *b)
{
    return ((*a)->ext_nid - (*b)->ext_nid);
}
