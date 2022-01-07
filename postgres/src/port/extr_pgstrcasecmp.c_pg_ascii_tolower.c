
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned char
pg_ascii_tolower(unsigned char ch)
{
 if (ch >= 'A' && ch <= 'Z')
  ch += 'a' - 'A';
 return ch;
}
