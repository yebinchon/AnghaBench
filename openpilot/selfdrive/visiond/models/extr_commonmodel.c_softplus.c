
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expf (float) ;
 float log1p (int ) ;

float softplus(float input) {
  return log1p(expf(input));
}
