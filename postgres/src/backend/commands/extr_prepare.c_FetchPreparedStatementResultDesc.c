
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * TupleDesc ;
struct TYPE_5__ {TYPE_1__* plansource; } ;
struct TYPE_4__ {scalar_t__ resultDesc; int fixed_result; } ;
typedef TYPE_2__ PreparedStatement ;


 int Assert (int ) ;
 int * CreateTupleDescCopy (scalar_t__) ;

TupleDesc
FetchPreparedStatementResultDesc(PreparedStatement *stmt)
{




 Assert(stmt->plansource->fixed_result);
 if (stmt->plansource->resultDesc)
  return CreateTupleDescCopy(stmt->plansource->resultDesc);
 else
  return ((void*)0);
}
