
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len1; int len2; int skiptablemask; char* str1; char* str2; int * skiptable; } ;
typedef TYPE_1__ TextPositionState ;


 int Assert (int) ;

__attribute__((used)) static char *
text_position_next_internal(char *start_ptr, TextPositionState *state)
{
 int haystack_len = state->len1;
 int needle_len = state->len2;
 int skiptablemask = state->skiptablemask;
 const char *haystack = state->str1;
 const char *needle = state->str2;
 const char *haystack_end = &haystack[haystack_len];
 const char *hptr;

 Assert(start_ptr >= haystack && start_ptr <= haystack_end);

 if (needle_len == 1)
 {

  char nchar = *needle;

  hptr = start_ptr;
  while (hptr < haystack_end)
  {
   if (*hptr == nchar)
    return (char *) hptr;
   hptr++;
  }
 }
 else
 {
  const char *needle_last = &needle[needle_len - 1];


  hptr = start_ptr + needle_len - 1;
  while (hptr < haystack_end)
  {

   const char *nptr;
   const char *p;

   nptr = needle_last;
   p = hptr;
   while (*nptr == *p)
   {

    if (nptr == needle)
     return (char *) p;
    nptr--, p--;
   }
   hptr += state->skiptable[(unsigned char) *hptr & skiptablemask];
  }
 }

 return 0;
}
