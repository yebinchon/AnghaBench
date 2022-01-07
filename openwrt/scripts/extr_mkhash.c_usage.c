
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 TYPE_1__* types ;

__attribute__((used)) static int usage(const char *progname)
{
 int i;

 fprintf(stderr, "Usage: %s <hash type> [<file>...]\n"
  "Supported hash types:", progname);

 for (i = 0; i < ARRAY_SIZE(types); i++)
  fprintf(stderr, "%s %s", i ? "," : "", types[i].name);

 fprintf(stderr, "\n");
 return 1;
}
