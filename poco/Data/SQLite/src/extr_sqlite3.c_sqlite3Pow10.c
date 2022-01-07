
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long double LONGDOUBLE_TYPE ;


 int assert (int) ;

__attribute__((used)) static LONGDOUBLE_TYPE sqlite3Pow10(int E){
  LONGDOUBLE_TYPE x = 10.0;
  LONGDOUBLE_TYPE r = 1.0;
  while(1){
    if( E & 1 ) r *= x;
    E >>= 1;
    if( E==0 ) break;
    x *= x;
  }
  return r;

}
