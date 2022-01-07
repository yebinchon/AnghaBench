
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int table; TYPE_1__* pTabSchema; } ;
typedef TYPE_2__ Trigger ;
typedef int Table ;
struct TYPE_4__ {int tblHash; } ;


 int * sqlite3HashFind (int *,int ,int) ;
 int sqlite3Strlen30 (int ) ;

__attribute__((used)) static Table *tableOfTrigger(Trigger *pTrigger){
  int n = sqlite3Strlen30(pTrigger->table);
  return sqlite3HashFind(&pTrigger->pTabSchema->tblHash, pTrigger->table, n);
}
