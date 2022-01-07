
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int desc; } ;
typedef TYPE_1__ TocEntry ;
typedef int RestorePass ;


 int RESTORE_PASS_ACL ;
 int RESTORE_PASS_MAIN ;
 int RESTORE_PASS_REFRESH ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static RestorePass
_tocEntryRestorePass(TocEntry *te)
{

 if (strcmp(te->desc, "ACL") == 0 ||
  strcmp(te->desc, "ACL LANGUAGE") == 0 ||
  strcmp(te->desc, "DEFAULT ACL") == 0)
  return RESTORE_PASS_ACL;
 if (strcmp(te->desc, "MATERIALIZED VIEW DATA") == 0)
  return RESTORE_PASS_REFRESH;
 return RESTORE_PASS_MAIN;
}
