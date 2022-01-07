
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 int gd_error (char*) ;

int overflow2(int a, int b)
{
 if(a <= 0 || b <= 0) {
  gd_error("one parameter to a memory allocation multiplication is negative or zero, failing operation gracefully\n");
  return 1;
 }
 if(a > INT_MAX / b) {
  gd_error("product of memory allocation multiplication would exceed INT_MAX, failing operation gracefully\n");
  return 1;
 }
 return 0;
}
