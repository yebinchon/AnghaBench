
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
grub_strstr (const char *haystack, const char *needle)
{





  if (*needle != '\0')
    {


      char b = *needle++;

      for (;; haystack++)
 {
   if (*haystack == '\0')

     return ((void*)0);
   if (*haystack == b)

     {
       const char *rhaystack = haystack + 1;
       const char *rneedle = needle;

       for (;; rhaystack++, rneedle++)
  {
    if (*rneedle == '\0')

      return (char *) haystack;
    if (*rhaystack == '\0')

      return ((void*)0);
    if (*rhaystack != *rneedle)

      break;
  }
     }
 }
    }
  else
    return (char *) haystack;
}
