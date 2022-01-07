
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * Type ;
struct TYPE_2__ {int oid; } ;
typedef int Oid ;
typedef TYPE_1__* Form_pg_type ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int *) ;
 int elog (int ,char*) ;

Oid
typeTypeId(Type tp)
{
 if (tp == ((void*)0))
  elog(ERROR, "typeTypeId() called with NULL type struct");
 return ((Form_pg_type) GETSTRUCT(tp))->oid;
}
