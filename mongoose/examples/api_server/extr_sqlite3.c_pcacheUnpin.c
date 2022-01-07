
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* xUnpin ) (int ,int ,int ) ;} ;
struct TYPE_9__ {TYPE_1__ pcache2; } ;
struct TYPE_8__ {int pCache; scalar_t__ pPage1; scalar_t__ bPurgeable; } ;
struct TYPE_7__ {int pgno; int pPage; TYPE_3__* pCache; } ;
typedef TYPE_2__ PgHdr ;
typedef TYPE_3__ PCache ;


 TYPE_4__ sqlite3GlobalConfig ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void pcacheUnpin(PgHdr *p){
  PCache *pCache = p->pCache;
  if( pCache->bPurgeable ){
    if( p->pgno==1 ){
      pCache->pPage1 = 0;
    }
    sqlite3GlobalConfig.pcache2.xUnpin(pCache->pCache, p->pPage, 0);
  }
}
