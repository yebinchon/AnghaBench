
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vtabOnConflict; } ;
typedef TYPE_1__ sqlite3 ;


 int OE_Abort ;
 int OE_Fail ;
 int OE_Ignore ;
 int OE_Replace ;
 int OE_Rollback ;



 int SQLITE_MISUSE_BKPT ;


 int assert (int) ;
 int sqlite3SafetyCheckOk (TYPE_1__*) ;

int sqlite3_vtab_on_conflict(sqlite3 *db){
  static const unsigned char aMap[] = {
    128, 132, 131, 130, 129
  };



  assert( OE_Rollback==1 && OE_Abort==2 && OE_Fail==3 );
  assert( OE_Ignore==4 && OE_Replace==5 );
  assert( db->vtabOnConflict>=1 && db->vtabOnConflict<=5 );
  return (int)aMap[db->vtabOnConflict-1];
}
