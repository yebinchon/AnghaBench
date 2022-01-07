
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ selmode; } ;


 int F_NOTRACE ;
 TYPE_1__ cfg ;
 int copier ;
 int pselbuf ;
 scalar_t__ selbufpos ;
 int spawn (int ,int *,int *,int *,int ) ;
 int writesel (int ,scalar_t__) ;

__attribute__((used)) static void endselection(void)
{
 if (cfg.selmode) {
  cfg.selmode = 0;

  if (selbufpos) {
   writesel(pselbuf, selbufpos - 1);
   spawn(copier, ((void*)0), ((void*)0), ((void*)0), F_NOTRACE);
  }
 }
}
