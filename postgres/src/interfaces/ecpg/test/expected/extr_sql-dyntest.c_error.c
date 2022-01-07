
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sqlerrmc; } ;
struct TYPE_4__ {TYPE_1__ sqlerrm; int sqlcode; } ;


 int exit (int) ;
 int printf (char*,int ,int ) ;
 TYPE_2__ sqlca ;

__attribute__((used)) static void
error (void)
{
  printf ("\n#%ld:%s\n", sqlca.sqlcode, sqlca.sqlerrm.sqlerrmc);
  exit (1);
}
