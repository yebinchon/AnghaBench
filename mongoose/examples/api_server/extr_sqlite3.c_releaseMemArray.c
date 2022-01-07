
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int mallocFailed; scalar_t__ pnBytesFreed; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_7__ {scalar_t__ db; int flags; int zMalloc; } ;
typedef TYPE_2__ Mem ;


 int MEM_Agg ;
 int MEM_Dyn ;
 int MEM_Frame ;
 int MEM_Invalid ;
 int MEM_RowSet ;
 int assert (int) ;
 int sqlite3DbFree (TYPE_1__*,int ) ;
 int sqlite3VdbeMemRelease (TYPE_2__*) ;

__attribute__((used)) static void releaseMemArray(Mem *p, int N){
  if( p && N ){
    Mem *pEnd;
    sqlite3 *db = p->db;
    u8 malloc_failed = db->mallocFailed;
    if( db->pnBytesFreed ){
      for(pEnd=&p[N]; p<pEnd; p++){
        sqlite3DbFree(db, p->zMalloc);
      }
      return;
    }
    for(pEnd=&p[N]; p<pEnd; p++){
      assert( (&p[1])==pEnd || p[0].db==p[1].db );
      if( p->flags&(MEM_Agg|MEM_Dyn|MEM_Frame|MEM_RowSet) ){
        sqlite3VdbeMemRelease(p);
      }else if( p->zMalloc ){
        sqlite3DbFree(db, p->zMalloc);
        p->zMalloc = 0;
      }

      p->flags = MEM_Invalid;
    }
    db->mallocFailed = malloc_failed;
  }
}
