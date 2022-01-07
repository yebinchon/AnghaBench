
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_next_resno; int * p_target_relation; } ;
typedef TYPE_1__ ParseState ;


 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int MaxTupleAttributeNumber ;
 int NoLock ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 int pfree (TYPE_1__*) ;
 int table_close (int *,int ) ;

void
free_parsestate(ParseState *pstate)
{





 if (pstate->p_next_resno - 1 > MaxTupleAttributeNumber)
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("target lists can have at most %d entries",
      MaxTupleAttributeNumber)));

 if (pstate->p_target_relation != ((void*)0))
  table_close(pstate->p_target_relation, NoLock);

 pfree(pstate);
}
