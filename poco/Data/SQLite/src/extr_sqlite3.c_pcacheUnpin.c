
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int pCache; scalar_t__ bPurgeable; } ;
struct TYPE_6__ {int (* xUnpin ) (int ,int ,int ) ;} ;
struct TYPE_8__ {TYPE_1__ pcache2; } ;
struct TYPE_7__ {TYPE_5__* pCache; int pPage; int pgno; } ;
typedef TYPE_2__ PgHdr ;


 int pcacheDump (TYPE_5__*) ;
 int pcacheTrace (char*) ;
 TYPE_3__ sqlite3GlobalConfig ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void pcacheUnpin(PgHdr *p){
  if( p->pCache->bPurgeable ){
    pcacheTrace(("%p.UNPIN %d\n", p->pCache, p->pgno));
    sqlite3GlobalConfig.pcache2.xUnpin(p->pCache->pCache, p->pPage, 0);
    pcacheDump(p->pCache);
  }
}
