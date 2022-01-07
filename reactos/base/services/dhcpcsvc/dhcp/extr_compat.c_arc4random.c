
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int rand () ;
 int srand (int ) ;

u_int32_t arc4random()
{
 static int did_srand = 0;
 u_int32_t ret;

 if (!did_srand) {
  srand(0);
  did_srand = 1;
 }

 ret = rand() << 10 ^ rand();
 return ret;
}
