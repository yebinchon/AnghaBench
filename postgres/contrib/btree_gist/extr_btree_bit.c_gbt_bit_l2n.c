
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bytea ;
struct TYPE_4__ {int * lower; int * upper; } ;
typedef TYPE_1__ GBT_VARKEY_R ;
typedef int GBT_VARKEY ;
typedef int FmgrInfo ;


 int * gbt_bit_xfrm (int *) ;
 int * gbt_var_key_copy (TYPE_1__*) ;
 TYPE_1__ gbt_var_key_readable (int *) ;
 int pfree (int *) ;

__attribute__((used)) static GBT_VARKEY *
gbt_bit_l2n(GBT_VARKEY *leaf, FmgrInfo *flinfo)
{
 GBT_VARKEY *out = leaf;
 GBT_VARKEY_R r = gbt_var_key_readable(leaf);
 bytea *o;

 o = gbt_bit_xfrm(r.lower);
 r.upper = r.lower = o;
 out = gbt_var_key_copy(&r);
 pfree(o);

 return out;

}
