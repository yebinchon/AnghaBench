
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; int typelem; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;


 int GETSTRUCT (int ) ;
 scalar_t__ OidIsValid (int ) ;

Oid
getTypeIOParam(HeapTuple typeTuple)
{
 Form_pg_type typeStruct = (Form_pg_type) GETSTRUCT(typeTuple);





 if (OidIsValid(typeStruct->typelem))
  return typeStruct->typelem;
 else
  return typeStruct->oid;
}
