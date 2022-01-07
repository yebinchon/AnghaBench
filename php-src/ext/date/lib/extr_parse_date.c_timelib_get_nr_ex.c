
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_sll ;


 int TIMELIB_UNSET ;
 int memcpy (char*,char*,int) ;
 int strtoll (char*,int *,int) ;
 char* timelib_calloc (int,int) ;
 int timelib_free (char*) ;

__attribute__((used)) static timelib_sll timelib_get_nr_ex(char **ptr, int max_length, int *scanned_length)
{
 char *begin, *end, *str;
 timelib_sll tmp_nr = TIMELIB_UNSET;
 int len = 0;

 while ((**ptr < '0') || (**ptr > '9')) {
  if (**ptr == '\0') {
   return TIMELIB_UNSET;
  }
  ++*ptr;
 }
 begin = *ptr;
 while ((**ptr >= '0') && (**ptr <= '9') && len < max_length) {
  ++*ptr;
  ++len;
 }
 end = *ptr;
 if (scanned_length) {
  *scanned_length = end - begin;
 }
 str = timelib_calloc(1, end - begin + 1);
 memcpy(str, begin, end - begin);
 tmp_nr = strtoll(str, ((void*)0), 10);
 timelib_free(str);
 return tmp_nr;
}
