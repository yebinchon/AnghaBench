
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _variable {char* value; char* name; struct _variable* next; } ;
typedef TYPE_1__* VariableSpace ;
struct TYPE_3__ {struct _variable* next; } ;


 scalar_t__ cancel_pressed ;
 int printf (char*,char*,char*) ;

void
PrintVariables(VariableSpace space)
{
 struct _variable *ptr;

 if (!space)
  return;

 for (ptr = space->next; ptr; ptr = ptr->next)
 {
  if (ptr->value)
   printf("%s = '%s'\n", ptr->name, ptr->value);
  if (cancel_pressed)
   break;
 }
}
