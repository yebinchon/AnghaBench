
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; char* desc; } ;


 TYPE_1__* builtin_script ;
 int fprintf (int ,char*,...) ;
 int lengthof (TYPE_1__*) ;
 int stderr ;

__attribute__((used)) static void
listAvailableScripts(void)
{
 int i;

 fprintf(stderr, "Available builtin scripts:\n");
 for (i = 0; i < lengthof(builtin_script); i++)
  fprintf(stderr, "  %13s: %s\n", builtin_script[i].name, builtin_script[i].desc);
 fprintf(stderr, "\n");
}
