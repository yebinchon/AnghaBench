
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int location; int length; } ;
typedef TYPE_1__ pgssLocationLen ;
struct TYPE_6__ {int clocations_count; int clocations_buf_size; TYPE_1__* clocations; } ;
typedef TYPE_2__ pgssJumbleState ;


 scalar_t__ repalloc (TYPE_1__*,int) ;

__attribute__((used)) static void
RecordConstLocation(pgssJumbleState *jstate, int location)
{

 if (location >= 0)
 {

  if (jstate->clocations_count >= jstate->clocations_buf_size)
  {
   jstate->clocations_buf_size *= 2;
   jstate->clocations = (pgssLocationLen *)
    repalloc(jstate->clocations,
       jstate->clocations_buf_size *
       sizeof(pgssLocationLen));
  }
  jstate->clocations[jstate->clocations_count].location = location;

  jstate->clocations[jstate->clocations_count].length = -1;
  jstate->clocations_count++;
 }
}
