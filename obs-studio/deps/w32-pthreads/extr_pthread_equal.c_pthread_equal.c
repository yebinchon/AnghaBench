
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ p; scalar_t__ x; } ;
typedef TYPE_1__ pthread_t ;



int
pthread_equal (pthread_t t1, pthread_t t2)
{
  int result;





  result = ( t1.p == t2.p && t1.x == t2.x );

  return (result);

}
