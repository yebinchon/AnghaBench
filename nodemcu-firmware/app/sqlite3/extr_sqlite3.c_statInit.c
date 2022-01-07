
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ tRowcnt ;
struct Stat4Sample {int iCol; scalar_t__* anDLt; scalar_t__* anLt; scalar_t__* anEq; } ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int sqlite3 ;
struct TYPE_5__ {scalar_t__* anLt; scalar_t__* anEq; scalar_t__* anDLt; } ;
struct TYPE_6__ {int nCol; int nKeyCol; int iGet; int mxSample; int iPrn; struct Stat4Sample* aBest; struct Stat4Sample* a; TYPE_1__ current; scalar_t__ nPSample; scalar_t__ nRow; int * db; } ;
typedef int Stat4Sample ;
typedef TYPE_2__ Stat4Accum ;


 int SQLITE_STAT4_SAMPLES ;
 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 TYPE_2__* sqlite3DbMallocZero (int *,int) ;
 int * sqlite3_context_db_handle (int *) ;
 int sqlite3_result_blob (int *,TYPE_2__*,int,int ) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_value_int (int *) ;
 int sqlite3_value_int64 (int *) ;
 int stat4Destructor ;

__attribute__((used)) static void statInit(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  Stat4Accum *p;
  int nCol;
  int nKeyCol;
  int nColUp;
  int n;
  sqlite3 *db;





  UNUSED_PARAMETER(argc);
  nCol = sqlite3_value_int(argv[0]);
  assert( nCol>0 );
  nColUp = sizeof(tRowcnt)<8 ? (nCol+1)&~1 : nCol;
  nKeyCol = sqlite3_value_int(argv[1]);
  assert( nKeyCol<=nCol );
  assert( nKeyCol>0 );


  n = sizeof(*p)
    + sizeof(tRowcnt)*nColUp
    + sizeof(tRowcnt)*nColUp





  ;
  db = sqlite3_context_db_handle(context);
  p = sqlite3DbMallocZero(db, n);
  if( p==0 ){
    sqlite3_result_error_nomem(context);
    return;
  }

  p->db = db;
  p->nRow = 0;
  p->nCol = nCol;
  p->nKeyCol = nKeyCol;
  p->current.anDLt = (tRowcnt*)&p[1];
  p->current.anEq = &p->current.anDLt[nColUp];
  sqlite3_result_blob(context, p, sizeof(*p), stat4Destructor);
}
