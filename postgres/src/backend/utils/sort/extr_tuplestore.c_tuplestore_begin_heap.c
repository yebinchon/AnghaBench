
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int readtup; int writetup; int copytup; } ;
typedef TYPE_1__ Tuplestorestate ;


 int EXEC_FLAG_BACKWARD ;
 int EXEC_FLAG_REWIND ;
 int copytup_heap ;
 int readtup_heap ;
 TYPE_1__* tuplestore_begin_common (int,int,int) ;
 int writetup_heap ;

Tuplestorestate *
tuplestore_begin_heap(bool randomAccess, bool interXact, int maxKBytes)
{
 Tuplestorestate *state;
 int eflags;





 eflags = randomAccess ?
  (EXEC_FLAG_BACKWARD | EXEC_FLAG_REWIND) :
  (EXEC_FLAG_REWIND);

 state = tuplestore_begin_common(eflags, interXact, maxKBytes);

 state->copytup = copytup_heap;
 state->writetup = writetup_heap;
 state->readtup = readtup_heap;

 return state;
}
