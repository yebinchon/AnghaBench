
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int E_WARNING ;
 int INT_MAX ;
 int php_error_docref (int *,int ,char*) ;

int overflow2(int a, int b)
{

 if(a <= 0 || b <= 0) {
  php_error_docref(((void*)0), E_WARNING, "one parameter to a memory allocation multiplication is negative or zero, failing operation gracefully\n");
  return 1;
 }
 if(a > INT_MAX / b) {
  php_error_docref(((void*)0), E_WARNING, "product of memory allocation multiplication would exceed INT_MAX, failing operation gracefully\n");
  return 1;
 }
 return 0;
}
