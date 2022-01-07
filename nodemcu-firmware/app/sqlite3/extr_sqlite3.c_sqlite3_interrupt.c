
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int isInterrupted; } ;
struct TYPE_6__ {scalar_t__ magic; TYPE_1__ u1; } ;
typedef TYPE_2__ sqlite3 ;


 scalar_t__ SQLITE_MAGIC_ZOMBIE ;
 int SQLITE_MISUSE_BKPT ;
 int sqlite3SafetyCheckOk (TYPE_2__*) ;

void sqlite3_interrupt(sqlite3 *db){






  db->u1.isInterrupted = 1;
}
