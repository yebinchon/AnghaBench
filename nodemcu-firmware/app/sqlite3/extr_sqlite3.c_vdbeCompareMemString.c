
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_value ;
struct TYPE_11__ {scalar_t__ enc; int (* xCmp ) (int ,int,void const*,int,void const*) ;int pUser; } ;
struct TYPE_10__ {scalar_t__ enc; int n; void const* z; int db; } ;
typedef TYPE_1__ Mem ;
typedef TYPE_2__ CollSeq ;


 int MEM_Ephem ;
 int MEM_Null ;
 int SQLITE_NOMEM_BKPT ;
 void* sqlite3ValueText (int *,scalar_t__) ;
 int sqlite3VdbeMemInit (TYPE_1__*,int ,int ) ;
 int sqlite3VdbeMemRelease (TYPE_1__*) ;
 int sqlite3VdbeMemShallowCopy (TYPE_1__*,TYPE_1__ const*,int ) ;
 int stub1 (int ,int,void const*,int,void const*) ;
 int stub2 (int ,int,void const*,int,void const*) ;

__attribute__((used)) static int vdbeCompareMemString(
  const Mem *pMem1,
  const Mem *pMem2,
  const CollSeq *pColl,
  u8 *prcErr
){
  if( pMem1->enc==pColl->enc ){


    return pColl->xCmp(pColl->pUser,pMem1->n,pMem1->z,pMem2->n,pMem2->z);
  }else{
    int rc;
    const void *v1, *v2;
    int n1, n2;
    Mem c1;
    Mem c2;
    sqlite3VdbeMemInit(&c1, pMem1->db, MEM_Null);
    sqlite3VdbeMemInit(&c2, pMem1->db, MEM_Null);
    sqlite3VdbeMemShallowCopy(&c1, pMem1, MEM_Ephem);
    sqlite3VdbeMemShallowCopy(&c2, pMem2, MEM_Ephem);
    v1 = sqlite3ValueText((sqlite3_value*)&c1, pColl->enc);
    n1 = v1==0 ? 0 : c1.n;
    v2 = sqlite3ValueText((sqlite3_value*)&c2, pColl->enc);
    n2 = v2==0 ? 0 : c2.n;
    rc = pColl->xCmp(pColl->pUser, n1, v1, n2, v2);
    if( (v1==0 || v2==0) && prcErr ) *prcErr = SQLITE_NOMEM_BKPT;
    sqlite3VdbeMemRelease(&c1);
    sqlite3VdbeMemRelease(&c2);
    return rc;
  }
}
