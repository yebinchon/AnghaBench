
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline char *num_to_str(unsigned long num, char *buf, int len)
{
 unsigned int digit;


 buf += len - 1;
 *buf = 0;
 do {
  digit = num % 10;
  *(--buf) = digit + '0';
  num /= 10;
 } while (num > 0);

 return buf;
}
