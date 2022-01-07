
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CalculateCheckpointSegments () ;
 double CheckPointCompletionTarget ;

void
assign_checkpoint_completion_target(double newval, void *extra)
{
 CheckPointCompletionTarget = newval;
 CalculateCheckpointSegments();
}
