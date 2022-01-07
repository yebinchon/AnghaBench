
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_sll ;



__attribute__((used)) static timelib_sll positive_mod(timelib_sll x, timelib_sll y)
{
 timelib_sll tmp;

 tmp = x % y;
 if (tmp < 0) {
  tmp += y;
 }

 return tmp;
}
