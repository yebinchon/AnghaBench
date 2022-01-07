
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int next; int curr; } ;
typedef TYPE_1__ inifile ;


 int inifile_line_free (int *) ;
 int pefree (TYPE_1__*,int) ;

void inifile_free(inifile *dba, int persistent)
{
 if (dba) {
  inifile_line_free(&dba->curr);
  inifile_line_free(&dba->next);
  pefree(dba, persistent);
 }
}
