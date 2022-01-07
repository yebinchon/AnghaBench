
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HIGHBIT_SET (unsigned char) ;
 scalar_t__ isupper (unsigned char) ;
 unsigned char tolower (unsigned char) ;

unsigned char
pg_tolower(unsigned char ch)
{
 if (ch >= 'A' && ch <= 'Z')
  ch += 'a' - 'A';
 else if (IS_HIGHBIT_SET(ch) && isupper(ch))
  ch = tolower(ch);
 return ch;
}
