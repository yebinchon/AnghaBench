
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nColumn; int* aiColumn; int colNotIdxed; } ;
typedef TYPE_1__ Index ;
typedef int Bitmask ;


 int BMS ;
 int MASKBIT (int) ;
 int assert (int) ;
 int testcase (int) ;

__attribute__((used)) static void recomputeColumnsNotIndexed(Index *pIdx){
  Bitmask m = 0;
  int j;
  for(j=pIdx->nColumn-1; j>=0; j--){
    int x = pIdx->aiColumn[j];
    if( x>=0 ){
      testcase( x==BMS-1 );
      testcase( x==BMS-2 );
      if( x<BMS-1 ) m |= MASKBIT(x);
    }
  }
  pIdx->colNotIdxed = ~m;
  assert( (pIdx->colNotIdxed>>63)==1 );
}
