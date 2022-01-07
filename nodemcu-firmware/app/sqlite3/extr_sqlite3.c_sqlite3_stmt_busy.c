
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_2__ {scalar_t__ magic; scalar_t__ pc; } ;
typedef TYPE_1__ Vdbe ;


 scalar_t__ VDBE_MAGIC_RUN ;

int sqlite3_stmt_busy(sqlite3_stmt *pStmt){
  Vdbe *v = (Vdbe*)pStmt;
  return v!=0 && v->magic==VDBE_MAGIC_RUN && v->pc>=0;
}
