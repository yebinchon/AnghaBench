
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * arg; } ;
typedef int Oid ;
typedef int List ;
typedef TYPE_1__ DefElem ;


 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 scalar_t__ FDW_HANDLEROID ;
 int InvalidOid ;
 int LookupFuncName (int *,int ,int *,int) ;
 int NameListToString (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,char*) ;
 scalar_t__ get_func_rettype (int ) ;

__attribute__((used)) static Oid
lookup_fdw_handler_func(DefElem *handler)
{
 Oid handlerOid;

 if (handler == ((void*)0) || handler->arg == ((void*)0))
  return InvalidOid;


 handlerOid = LookupFuncName((List *) handler->arg, 0, ((void*)0), 0);


 if (get_func_rettype(handlerOid) != FDW_HANDLEROID)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("function %s must return type %s",
      NameListToString((List *) handler->arg), "fdw_handler")));

 return handlerOid;
}
