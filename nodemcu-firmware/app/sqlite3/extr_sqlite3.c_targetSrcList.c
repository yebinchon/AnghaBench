
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {int nDb; TYPE_2__* aDb; } ;
typedef TYPE_4__ sqlite3 ;
struct TYPE_19__ {char const* zTarget; TYPE_1__* pTrig; } ;
typedef TYPE_5__ TriggerStep ;
struct TYPE_21__ {TYPE_4__* db; } ;
struct TYPE_20__ {int nSrc; TYPE_3__* a; } ;
struct TYPE_17__ {void* zDatabase; void* zName; } ;
struct TYPE_16__ {char* zDbSName; } ;
struct TYPE_15__ {int pSchema; } ;
typedef TYPE_6__ SrcList ;
typedef TYPE_7__ Parse ;


 int assert (int) ;
 void* sqlite3DbStrDup (TYPE_4__*,char const*) ;
 int sqlite3SchemaToIndex (TYPE_4__*,int ) ;
 TYPE_6__* sqlite3SrcListAppend (TYPE_4__*,int ,int ,int ) ;

__attribute__((used)) static SrcList *targetSrcList(
  Parse *pParse,
  TriggerStep *pStep
){
  sqlite3 *db = pParse->db;
  int iDb;
  SrcList *pSrc;

  pSrc = sqlite3SrcListAppend(db, 0, 0, 0);
  if( pSrc ){
    assert( pSrc->nSrc>0 );
    pSrc->a[pSrc->nSrc-1].zName = sqlite3DbStrDup(db, pStep->zTarget);
    iDb = sqlite3SchemaToIndex(db, pStep->pTrig->pSchema);
    if( iDb==0 || iDb>=2 ){
      const char *zDb;
      assert( iDb<db->nDb );
      zDb = db->aDb[iDb].zDbSName;
      pSrc->a[pSrc->nSrc-1].zDatabase = sqlite3DbStrDup(db, zDb);
    }
  }
  return pSrc;
}
