
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ trash; } ;


 int FALSE ;
 int F_NORMAL ;
 TYPE_1__ cfg ;
 char confirm_force (int ) ;
 int spawn (char*,char*,char*,int *,int ) ;

__attribute__((used)) static void xrm(char *path)
{
 if (cfg.trash)
  spawn("trash-put", path, ((void*)0), ((void*)0), F_NORMAL);
 else {
  char rm_opts[] = "-ir";

  rm_opts[1] = confirm_force(FALSE);
  spawn("rm", rm_opts, path, ((void*)0), F_NORMAL);
 }
}
