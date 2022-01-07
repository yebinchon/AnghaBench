
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {scalar_t__ magic; scalar_t__ pc; int nVar; int expmask; int expired; scalar_t__ isPrepareV2; TYPE_6__* db; TYPE_2__* aVar; int zSql; } ;
typedef TYPE_1__ Vdbe ;
struct TYPE_9__ {int mutex; } ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_2__ Mem ;


 int MEM_Null ;
 int SQLITE_MISUSE ;
 int SQLITE_MISUSE_BKPT ;
 int SQLITE_OK ;
 int SQLITE_RANGE ;
 scalar_t__ VDBE_MAGIC_RUN ;
 int assert (int) ;
 int sqlite3Error (TYPE_6__*,int) ;
 int sqlite3VdbeMemRelease (TYPE_2__*) ;
 int sqlite3_log (int,char*,int ) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;
 scalar_t__ vdbeSafetyNotNull (TYPE_1__*) ;

__attribute__((used)) static int vdbeUnbind(Vdbe *p, int i){
  Mem *pVar;
  if( vdbeSafetyNotNull(p) ){
    return SQLITE_MISUSE_BKPT;
  }
  sqlite3_mutex_enter(p->db->mutex);
  if( p->magic!=VDBE_MAGIC_RUN || p->pc>=0 ){
    sqlite3Error(p->db, SQLITE_MISUSE);
    sqlite3_mutex_leave(p->db->mutex);
    sqlite3_log(SQLITE_MISUSE,
        "bind on a busy prepared statement: [%s]", p->zSql);
    return SQLITE_MISUSE_BKPT;
  }
  if( i<1 || i>p->nVar ){
    sqlite3Error(p->db, SQLITE_RANGE);
    sqlite3_mutex_leave(p->db->mutex);
    return SQLITE_RANGE;
  }
  i--;
  pVar = &p->aVar[i];
  sqlite3VdbeMemRelease(pVar);
  pVar->flags = MEM_Null;
  sqlite3Error(p->db, SQLITE_OK);
  assert( p->isPrepareV2 || p->expmask==0 );
  if( p->expmask!=0 && (p->expmask & (i>=31 ? 0x80000000 : (u32)1<<i))!=0 ){
    p->expired = 1;
  }
  return SQLITE_OK;
}
