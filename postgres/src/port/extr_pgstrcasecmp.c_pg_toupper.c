
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HIGHBIT_SET (unsigned char) ;
 scalar_t__ islower (unsigned char) ;
 unsigned char toupper (unsigned char) ;

unsigned char
pg_toupper(unsigned char ch)
{
 if (ch >= 'a' && ch <= 'z')
  ch += 'A' - 'a';
 else if (IS_HIGHBIT_SET(ch) && islower(ch))
  ch = toupper(ch);
 return ch;
}
