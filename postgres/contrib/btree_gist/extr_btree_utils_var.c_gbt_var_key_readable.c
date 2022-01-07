
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const bytea ;
struct TYPE_3__ {int const* lower; int const* upper; } ;
typedef TYPE_1__ GBT_VARKEY_R ;
typedef int GBT_VARKEY ;


 size_t INTALIGN (scalar_t__) ;
 size_t VARHDRSZ ;
 scalar_t__ VARSIZE (int const*) ;

GBT_VARKEY_R
gbt_var_key_readable(const GBT_VARKEY *k)
{
 GBT_VARKEY_R r;

 r.lower = (bytea *) &(((char *) k)[VARHDRSZ]);
 if (VARSIZE(k) > (VARHDRSZ + (VARSIZE(r.lower))))
  r.upper = (bytea *) &(((char *) k)[VARHDRSZ + INTALIGN(VARSIZE(r.lower))]);
 else
  r.upper = r.lower;
 return r;
}
