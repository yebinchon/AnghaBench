
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* gen; } ;
typedef TYPE_2__ relopt_value ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef int Size ;


 scalar_t__ GET_STRING_RELOPTION_LEN (TYPE_2__) ;
 scalar_t__ RELOPT_TYPE_STRING ;
 void* palloc0 (int ) ;

__attribute__((used)) static void *
allocateReloptStruct(Size base, relopt_value *options, int numoptions)
{
 Size size = base;
 int i;

 for (i = 0; i < numoptions; i++)
  if (options[i].gen->type == RELOPT_TYPE_STRING)
   size += GET_STRING_RELOPTION_LEN(options[i]) + 1;

 return palloc0(size);
}
