
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pos; } ;
struct TYPE_5__ {TYPE_3__ curr; } ;
typedef TYPE_1__ inifile ;


 int inifile_line_free (TYPE_3__*) ;
 int inifile_nextkey (TYPE_1__*) ;

int inifile_firstkey(inifile *dba) {
 inifile_line_free(&dba->curr);
 dba->curr.pos = 0;
 return inifile_nextkey(dba);
}
