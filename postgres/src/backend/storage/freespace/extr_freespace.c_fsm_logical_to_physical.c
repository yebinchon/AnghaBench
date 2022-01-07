
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int logpageno; int level; } ;
typedef TYPE_1__ FSMAddress ;
typedef scalar_t__ BlockNumber ;


 int FSM_TREE_DEPTH ;
 int SlotsPerFSMPage ;

__attribute__((used)) static BlockNumber
fsm_logical_to_physical(FSMAddress addr)
{
 BlockNumber pages;
 int leafno;
 int l;





 leafno = addr.logpageno;
 for (l = 0; l < addr.level; l++)
  leafno *= SlotsPerFSMPage;


 pages = 0;
 for (l = 0; l < FSM_TREE_DEPTH; l++)
 {
  pages += leafno + 1;
  leafno /= SlotsPerFSMPage;
 }





 pages -= addr.level;


 return pages - 1;
}
