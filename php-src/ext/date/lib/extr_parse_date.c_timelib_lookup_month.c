
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; scalar_t__ name; } ;
typedef TYPE_1__ timelib_lookup_table ;
typedef int timelib_long ;


 int memcpy (char*,char*,int) ;
 char* timelib_calloc (int,int) ;
 int timelib_free (char*) ;
 TYPE_1__* timelib_month_lookup ;
 scalar_t__ timelib_strcasecmp (char*,scalar_t__) ;

__attribute__((used)) static timelib_long timelib_lookup_month(char **ptr)
{
 char *word;
 char *begin = *ptr, *end;
 timelib_long value = 0;
 const timelib_lookup_table *tp;

 while ((**ptr >= 'A' && **ptr <= 'Z') || (**ptr >= 'a' && **ptr <= 'z')) {
  ++*ptr;
 }
 end = *ptr;
 word = timelib_calloc(1, end - begin + 1);
 memcpy(word, begin, end - begin);

 for (tp = timelib_month_lookup; tp->name; tp++) {
  if (timelib_strcasecmp(word, tp->name) == 0) {
   value = tp->value;
  }
 }

 timelib_free(word);
 return value;
}
