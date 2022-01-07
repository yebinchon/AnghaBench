
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int sqlite3_stmt ;
struct TYPE_2__ {scalar_t__* aCounter; } ;
typedef TYPE_1__ Vdbe ;


 int SQLITE_MISUSE_BKPT ;

int sqlite3_stmt_status(sqlite3_stmt *pStmt, int op, int resetFlag){
  Vdbe *pVdbe = (Vdbe*)pStmt;
  u32 v;






  v = pVdbe->aCounter[op];
  if( resetFlag ) pVdbe->aCounter[op] = 0;
  return (int)v;
}
