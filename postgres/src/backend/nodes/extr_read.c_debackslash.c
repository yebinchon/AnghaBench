
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* palloc (int) ;

char *
debackslash(const char *token, int length)
{
 char *result = palloc(length + 1);
 char *ptr = result;

 while (length > 0)
 {
  if (*token == '\\' && length > 1)
   token++, length--;
  *ptr++ = *token++;
  length--;
 }
 *ptr = '\0';
 return result;
}
