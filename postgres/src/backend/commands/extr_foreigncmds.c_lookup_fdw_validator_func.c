
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * arg; } ;
typedef int Oid ;
typedef int List ;
typedef TYPE_1__ DefElem ;


 int InvalidOid ;
 int LookupFuncName (int *,int,int *,int) ;
 int OIDOID ;
 int TEXTARRAYOID ;

__attribute__((used)) static Oid
lookup_fdw_validator_func(DefElem *validator)
{
 Oid funcargtypes[2];

 if (validator == ((void*)0) || validator->arg == ((void*)0))
  return InvalidOid;


 funcargtypes[0] = TEXTARRAYOID;
 funcargtypes[1] = OIDOID;

 return LookupFuncName((List *) validator->arg, 2, funcargtypes, 0);

}
