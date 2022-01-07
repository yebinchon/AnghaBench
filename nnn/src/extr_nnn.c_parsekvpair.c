
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uchar ;
struct TYPE_3__ {char key; char* val; } ;
typedef TYPE_1__ kv ;


 int FALSE ;
 int TRUE ;
 char* getenv (char const*) ;
 char* strdup (char*) ;

__attribute__((used)) static bool parsekvpair(kv *kvarr, char **envcpy, const char *cfgstr, uchar maxitems)
{
 int i = 0;
 char *nextkey;
 char *ptr = getenv(cfgstr);

 if (!ptr || !*ptr)
  return TRUE;

 *envcpy = strdup(ptr);
 ptr = *envcpy;
 nextkey = ptr;

 while (*ptr && i < maxitems) {
  if (ptr == nextkey) {
   kvarr[i].key = *ptr;
   if (*++ptr != ':')
    return FALSE;
   if (*++ptr == '\0')
    return FALSE;
   kvarr[i].val = ptr;
   ++i;
  }

  if (*ptr == ';') {

   if (i > 0 && *(ptr - 1) == '/')
    *(ptr - 1) = '\0';

   *ptr = '\0';
   nextkey = ptr + 1;
  }

  ++ptr;
 }

 if (i < maxitems) {
  if (*kvarr[i - 1].val == '\0')
   return FALSE;
  kvarr[i].key = '\0';
 }

 return TRUE;
}
