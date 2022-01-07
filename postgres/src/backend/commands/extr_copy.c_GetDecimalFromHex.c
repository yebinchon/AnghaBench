
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (unsigned char) ;
 char tolower (unsigned char) ;

__attribute__((used)) static int
GetDecimalFromHex(char hex)
{
 if (isdigit((unsigned char) hex))
  return hex - '0';
 else
  return tolower((unsigned char) hex) - 'a' + 10;
}
