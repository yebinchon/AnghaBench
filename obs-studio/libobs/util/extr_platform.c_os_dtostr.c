
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int from_locale (char*) ;
 int memmove (char*,char*,size_t) ;
 int snprintf (char*,size_t,char*,double) ;
 char* strchr (char*,char) ;

int os_dtostr(double value, char *dst, size_t size)
{
 int ret;
 char *start, *end;
 size_t length;

 ret = snprintf(dst, size, "%.17g", value);
 if (ret < 0)
  return -1;

 length = (size_t)ret;
 if (length >= size)
  return -1;

 from_locale(dst);



 if (strchr(dst, '.') == ((void*)0) && strchr(dst, 'e') == ((void*)0)) {
  if (length + 3 >= size) {

   return -1;
  }
  dst[length] = '.';
  dst[length + 1] = '0';
  dst[length + 2] = '\0';
  length += 2;
 }



 start = strchr(dst, 'e');
 if (start) {
  start++;
  end = start + 1;

  if (*start == '-')
   start++;

  while (*end == '0')
   end++;

  if (end != start) {
   memmove(start, end, length - (size_t)(end - dst));
   length -= (size_t)(end - start);
  }
 }

 return (int)length;
}
