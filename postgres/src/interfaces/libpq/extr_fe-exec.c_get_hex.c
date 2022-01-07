
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* hexlookup ;

__attribute__((used)) static inline char
get_hex(char c)
{
 int res = -1;

 if (c > 0 && c < 127)
  res = hexlookup[(unsigned char) c];

 return (char) res;
}
