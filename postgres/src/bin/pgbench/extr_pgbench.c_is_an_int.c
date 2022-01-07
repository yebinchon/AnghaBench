
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static bool
is_an_int(const char *str)
{
 const char *ptr = str;


 while (*ptr && isspace((unsigned char) *ptr))
  ptr++;


 if (*ptr == '+' || *ptr == '-')
  ptr++;


 if (*ptr && !isdigit((unsigned char) *ptr))
  return 0;


 while (*ptr && isdigit((unsigned char) *ptr))
  ptr++;


 return *ptr == '\0';
}
