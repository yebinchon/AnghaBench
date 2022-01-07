
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalpha (unsigned char) ;
 scalar_t__ isdigit (unsigned char) ;
 char toupper (unsigned char) ;

__attribute__((used)) static int
s_ch2val(char c, int r)
{
 int out;







 if (isdigit((unsigned char) c))
  out = c - '0';
 else if (r > 10 && isalpha((unsigned char) c))
  out = toupper((unsigned char) c) - 'A' + 10;
 else
  return -1;

 return (out >= r) ? -1 : out;
}
