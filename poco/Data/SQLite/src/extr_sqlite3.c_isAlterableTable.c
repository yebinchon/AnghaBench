
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int tabFlags; int zName; } ;
typedef TYPE_2__ Table ;
struct TYPE_9__ {TYPE_1__* db; } ;
struct TYPE_7__ {int flags; scalar_t__ nVdbeExec; } ;
typedef TYPE_3__ Parse ;


 int SQLITE_Defensive ;
 int TF_Shadow ;
 int sqlite3ErrorMsg (TYPE_3__*,char*,int ) ;
 scalar_t__ sqlite3StrNICmp (int ,char*,int) ;

__attribute__((used)) static int isAlterableTable(Parse *pParse, Table *pTab){
  if( 0==sqlite3StrNICmp(pTab->zName, "sqlite_", 7)

   || ( (pTab->tabFlags & TF_Shadow)
     && (pParse->db->flags & SQLITE_Defensive)
     && pParse->db->nVdbeExec==0
   )

  ){
    sqlite3ErrorMsg(pParse, "table %s may not be altered", pTab->zName);
    return 1;
  }
  return 0;
}
