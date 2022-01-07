
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;


 int DEFAULT_PASSWD ;
 int FILE_NIS ;
 TYPE_1__* syspw ;
 TYPE_1__* t_openpwbyname (int ) ;

__attribute__((used)) static int
pwinit()
{
  if(syspw == ((void*)0)) {
    if((syspw = t_openpwbyname(DEFAULT_PASSWD)) == ((void*)0))
      return -1;
    syspw->state = FILE_NIS;
  }
  return 0;
}
