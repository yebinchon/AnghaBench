
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_5__ {int begun; } ;
typedef TYPE_1__ SampleScanState ;


 int * tablesample_getnext (TYPE_1__*) ;
 int tablesample_init (TYPE_1__*) ;

__attribute__((used)) static TupleTableSlot *
SampleNext(SampleScanState *node)
{



 if (!node->begun)
  tablesample_init(node);




 return tablesample_getnext(node);
}
