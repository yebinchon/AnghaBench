
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int selmode; } ;


 TYPE_1__ cfg ;
 scalar_t__ nselected ;
 int resetselind () ;
 scalar_t__ selbufpos ;
 int writesel (int *,int ) ;

__attribute__((used)) static void startselection(void)
{
 if (!cfg.selmode) {
  cfg.selmode = 1;
  nselected = 0;

  if (selbufpos) {
   resetselind();
   writesel(((void*)0), 0);
   selbufpos = 0;
  }
 }
}
