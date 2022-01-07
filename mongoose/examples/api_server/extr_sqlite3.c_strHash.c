
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int* sqlite3UpperToLower ;

__attribute__((used)) static unsigned int strHash(const char *z, int nKey){
  int h = 0;
  assert( nKey>=0 );
  while( nKey > 0 ){
    h = (h<<3) ^ h ^ sqlite3UpperToLower[(unsigned char)*z++];
    nKey--;
  }
  return h;
}
