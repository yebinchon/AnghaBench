
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int8_t ;



__attribute__((used)) static double ln(double x) {
 double y = (x-1)/(x+1);
 double y2 = y*y;
 double r = 0;
 for (int8_t i=33; i>0; i-=2) {
  r = 1.0/(double)i + y2 * r;
 }
 return 2*y*r;
}
