
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pgno; TYPE_1__* pPager; } ;
struct TYPE_4__ {int pInJournal; } ;
typedef TYPE_2__ PgHdr ;


 int sqlite3BitvecTest (int ,int ) ;

__attribute__((used)) static int pageInJournal(PgHdr *pPg){
  return sqlite3BitvecTest(pPg->pPager->pInJournal, pPg->pgno);
}
