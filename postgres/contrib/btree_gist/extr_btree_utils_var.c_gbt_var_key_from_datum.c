
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varlena {int dummy; } ;
typedef scalar_t__ int32 ;
typedef int GBT_VARKEY ;


 int SET_VARSIZE (int *,scalar_t__) ;
 int VARDATA (int *) ;
 scalar_t__ VARHDRSZ ;
 scalar_t__ VARSIZE (struct varlena const*) ;
 int memcpy (int ,struct varlena const*,scalar_t__) ;
 scalar_t__ palloc (scalar_t__) ;

__attribute__((used)) static GBT_VARKEY *
gbt_var_key_from_datum(const struct varlena *u)
{
 int32 lowersize = VARSIZE(u);
 GBT_VARKEY *r;

 r = (GBT_VARKEY *) palloc(lowersize + VARHDRSZ);
 memcpy(VARDATA(r), u, lowersize);
 SET_VARSIZE(r, lowersize + VARHDRSZ);

 return r;
}
