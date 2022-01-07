
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_3__ {int upper; int lower; } ;
typedef TYPE_1__ GBT_VARKEY_R ;
typedef int GBT_VARKEY ;


 scalar_t__ INTALIGN (scalar_t__) ;
 int SET_VARSIZE (int *,scalar_t__) ;
 scalar_t__ VARDATA (int *) ;
 scalar_t__ VARHDRSZ ;
 scalar_t__ VARSIZE (int ) ;
 int memcpy (scalar_t__,int ,scalar_t__) ;
 scalar_t__ palloc0 (scalar_t__) ;

GBT_VARKEY *
gbt_var_key_copy(const GBT_VARKEY_R *u)
{
 int32 lowersize = VARSIZE(u->lower);
 int32 uppersize = VARSIZE(u->upper);
 GBT_VARKEY *r;

 r = (GBT_VARKEY *) palloc0(INTALIGN(lowersize) + uppersize + VARHDRSZ);
 memcpy(VARDATA(r), u->lower, lowersize);
 memcpy(VARDATA(r) + INTALIGN(lowersize), u->upper, uppersize);
 SET_VARSIZE(r, INTALIGN(lowersize) + uppersize + VARHDRSZ);

 return r;
}
