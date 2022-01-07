
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* _codes ;
 scalar_t__ isalpha (unsigned char) ;
 char toupper (unsigned char) ;

__attribute__((used)) static int
getcode(char c)
{
 if (isalpha((unsigned char) c))
 {
  c = toupper((unsigned char) c);

  if (c >= 'A' && c <= 'Z')
   return _codes[c - 'A'];
 }
 return 0;
}
