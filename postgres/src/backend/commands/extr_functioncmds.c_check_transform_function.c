
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* values; } ;
struct TYPE_5__ {scalar_t__ provolatile; scalar_t__ prokind; int pronargs; TYPE_1__ proargtypes; scalar_t__ proretset; } ;
typedef TYPE_2__* Form_pg_proc ;


 int ERRCODE_INVALID_OBJECT_DEFINITION ;
 int ERROR ;
 scalar_t__ INTERNALOID ;
 scalar_t__ PROKIND_FUNCTION ;
 scalar_t__ PROVOLATILE_VOLATILE ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;

__attribute__((used)) static void
check_transform_function(Form_pg_proc procstruct)
{
 if (procstruct->provolatile == PROVOLATILE_VOLATILE)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("transform function must not be volatile")));
 if (procstruct->prokind != PROKIND_FUNCTION)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("transform function must be a normal function")));
 if (procstruct->proretset)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("transform function must not return a set")));
 if (procstruct->pronargs != 1)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("transform function must take one argument")));
 if (procstruct->proargtypes.values[0] != INTERNALOID)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("first argument of transform function must be type %s",
      "internal")));
}
