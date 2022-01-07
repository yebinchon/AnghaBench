
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_5__ {scalar_t__* apCsr; int nCursor; int nMem; scalar_t__ pResultSet; int zErrMsg; TYPE_1__* aMem; int * db; } ;
typedef TYPE_2__ Vdbe ;
struct TYPE_4__ {scalar_t__ flags; } ;


 scalar_t__ MEM_Undefined ;
 int assert (int) ;
 int sqlite3DbFree (int *,int ) ;

__attribute__((used)) static void Cleanup(Vdbe *p){
  sqlite3 *db = p->db;
  sqlite3DbFree(db, p->zErrMsg);
  p->zErrMsg = 0;
  p->pResultSet = 0;
}
