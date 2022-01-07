
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ i16 ;


 int assert (int) ;

__attribute__((used)) static int hasColumn(const i16 *aiCol, int nCol, int x){
  while( nCol-- > 0 ){
    assert( aiCol[0]>=0 );
    if( x==*(aiCol++) ){
      return 1;
    }
  }
  return 0;
}
