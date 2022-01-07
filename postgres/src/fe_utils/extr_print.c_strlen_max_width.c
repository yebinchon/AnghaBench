
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PQdsplen (char*,int) ;
 int PQmblen (char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int
strlen_max_width(unsigned char *str, int *target_width, int encoding)
{
 unsigned char *start = str;
 unsigned char *end = str + strlen((char *) str);
 int curr_width = 0;

 while (str < end)
 {
  int char_width = PQdsplen((char *) str, encoding);







  if (*target_width < curr_width + char_width && curr_width != 0)
   break;

  curr_width += char_width;

  str += PQmblen((char *) str, encoding);
 }

 *target_width = curr_width;

 return str - start;
}
