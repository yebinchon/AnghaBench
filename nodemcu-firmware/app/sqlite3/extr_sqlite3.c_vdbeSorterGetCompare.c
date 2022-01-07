
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ typeMask; } ;
typedef TYPE_1__ VdbeSorter ;
typedef int SorterCompare ;


 scalar_t__ SORTER_TYPE_INTEGER ;
 scalar_t__ SORTER_TYPE_TEXT ;
 int vdbeSorterCompare ;
 int vdbeSorterCompareInt ;
 int vdbeSorterCompareText ;

__attribute__((used)) static SorterCompare vdbeSorterGetCompare(VdbeSorter *p){
  if( p->typeMask==SORTER_TYPE_INTEGER ){
    return vdbeSorterCompareInt;
  }else if( p->typeMask==SORTER_TYPE_TEXT ){
    return vdbeSorterCompareText;
  }
  return vdbeSorterCompare;
}
