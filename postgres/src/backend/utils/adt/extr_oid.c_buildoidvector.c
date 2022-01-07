
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ndim; int dim1; scalar_t__ lbound1; int elemtype; scalar_t__ dataoffset; int values; } ;
typedef TYPE_1__ oidvector ;
typedef int Oid ;


 int OIDOID ;
 int OidVectorSize (int) ;
 int SET_VARSIZE (TYPE_1__*,int ) ;
 int memcpy (int ,int const*,int) ;
 scalar_t__ palloc0 (int ) ;

oidvector *
buildoidvector(const Oid *oids, int n)
{
 oidvector *result;

 result = (oidvector *) palloc0(OidVectorSize(n));

 if (n > 0 && oids)
  memcpy(result->values, oids, n * sizeof(Oid));





 SET_VARSIZE(result, OidVectorSize(n));
 result->ndim = 1;
 result->dataoffset = 0;
 result->elemtype = OIDOID;
 result->dim1 = n;
 result->lbound1 = 0;

 return result;
}
