
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* sqlerrmc; } ;
struct TYPE_4__ {TYPE_1__ sqlerrm; } ;


 int printf (char*,char*) ;
 TYPE_2__ sqlca ;

__attribute__((used)) static void dosqlprint(void) {
 printf("doSQLprint: Error: %s\n", sqlca.sqlerrm.sqlerrmc);
}
