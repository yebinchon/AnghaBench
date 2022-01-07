
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EIGHT_BYTE_ALIGNMENT (int *) ;
 int ROUND8 (int) ;
 int assert (int ) ;

__attribute__((used)) static void *allocSpace(
  void *pBuf,
  int nByte,
  u8 **ppFrom,
  u8 *pEnd,
  int *pnByte
){
  assert( EIGHT_BYTE_ALIGNMENT(*ppFrom) );
  if( pBuf ) return pBuf;
  nByte = ROUND8(nByte);
  if( &(*ppFrom)[nByte] <= pEnd ){
    pBuf = (void*)*ppFrom;
    *ppFrom += nByte;
  }else{
    *pnByte += nByte;
  }
  return pBuf;
}
