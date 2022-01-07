
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gmtoffset; int type; } ;
typedef TYPE_1__ timelib_tz_lookup_table ;
typedef int timelib_long ;


 TYPE_1__* abbr_search (char*,int,int ) ;
 int memcpy (char*,char*,int) ;
 char* timelib_calloc (int,int) ;

__attribute__((used)) static timelib_long timelib_lookup_abbr(char **ptr, int *dst, char **tz_abbr, int *found)
{
 char *word;
 char *begin = *ptr, *end;
 timelib_long value = 0;
 const timelib_tz_lookup_table *tp;

 while (**ptr != '\0' && **ptr != ')' && **ptr != ' ') {
  ++*ptr;
 }
 end = *ptr;
 word = timelib_calloc(1, end - begin + 1);
 memcpy(word, begin, end - begin);

 if ((tp = abbr_search(word, -1, 0))) {
  value = tp->gmtoffset;
  *dst = tp->type;
  value -= tp->type * 3600;
  *found = 1;
 } else {
  *found = 0;
 }

 *tz_abbr = word;
 return value;
}
