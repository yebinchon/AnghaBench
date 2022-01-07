
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_stmt ;
struct TYPE_4__ {scalar_t__ mallocFailed; int mutex; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_5__ {int * aColName; TYPE_1__* db; } ;
typedef TYPE_2__ Vdbe ;


 int SQLITE_MISUSE_BKPT ;
 int assert (int) ;
 int sqlite3OomClear (TYPE_1__*) ;
 int sqlite3_column_count (int *) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;
 void* sqlite3_value_text (int *) ;
 void* sqlite3_value_text16 (int *) ;

__attribute__((used)) static const void *columnName(
  sqlite3_stmt *pStmt,
  int N,
  int useUtf16,
  int useType
){
  const void *ret;
  Vdbe *p;
  int n;
  sqlite3 *db;






  ret = 0;
  p = (Vdbe *)pStmt;
  db = p->db;
  assert( db!=0 );
  n = sqlite3_column_count(pStmt);
  if( N<n && N>=0 ){
    N += useType*n;
    sqlite3_mutex_enter(db->mutex);
    assert( db->mallocFailed==0 );

    if( useUtf16 ){
      ret = sqlite3_value_text16((sqlite3_value*)&p->aColName[N]);
    }else

    {
      ret = sqlite3_value_text((sqlite3_value*)&p->aColName[N]);
    }



    if( db->mallocFailed ){
      sqlite3OomClear(db);
      ret = 0;
    }
    sqlite3_mutex_leave(db->mutex);
  }
  return ret;
}
