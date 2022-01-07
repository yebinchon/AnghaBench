
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double timelib_sll ;


 double TIMELIB_UNSET ;
 int memcpy (char*,char*,int) ;
 double pow (int,int) ;
 double strtod (char*,int *) ;
 char* timelib_calloc (int,int) ;
 int timelib_free (char*) ;

__attribute__((used)) static timelib_sll timelib_get_frac_nr(char **ptr, int max_length)
{
 char *begin, *end, *str;
 double tmp_nr = TIMELIB_UNSET;
 int len = 0;

 while ((**ptr != '.') && (**ptr != ':') && ((**ptr < '0') || (**ptr > '9'))) {
  if (**ptr == '\0') {
   return TIMELIB_UNSET;
  }
  ++*ptr;
 }
 begin = *ptr;
 while (((**ptr == '.') || (**ptr == ':') || ((**ptr >= '0') && (**ptr <= '9'))) && len < max_length) {
  ++*ptr;
  ++len;
 }
 end = *ptr;
 str = timelib_calloc(1, end - begin);
 memcpy(str, begin + 1, end - begin - 1);
 tmp_nr = strtod(str, ((void*)0)) * pow(10, 7 - (end - begin));
 timelib_free(str);
 return tmp_nr;
}
