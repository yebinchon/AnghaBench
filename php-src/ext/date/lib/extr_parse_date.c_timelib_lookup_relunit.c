
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ name; } ;
typedef TYPE_1__ timelib_relunit ;


 int memcpy (char*,char*,int) ;
 char* timelib_calloc (int,int) ;
 int timelib_free (char*) ;
 TYPE_1__* timelib_relunit_lookup ;
 scalar_t__ timelib_strcasecmp (char*,scalar_t__) ;

__attribute__((used)) static const timelib_relunit* timelib_lookup_relunit(char **ptr)
{
 char *word;
 char *begin = *ptr, *end;
 const timelib_relunit *tp, *value = ((void*)0);

 while (**ptr != '\0' && **ptr != ' ' && **ptr != ',' && **ptr != '\t' && **ptr != ';' && **ptr != ':' &&
  **ptr != '/' && **ptr != '.' && **ptr != '-' && **ptr != '(' && **ptr != ')' ) {
  ++*ptr;
 }
 end = *ptr;
 word = timelib_calloc(1, end - begin + 1);
 memcpy(word, begin, end - begin);

 for (tp = timelib_relunit_lookup; tp->name; tp++) {
  if (timelib_strcasecmp(word, tp->name) == 0) {
   value = tp;
   break;
  }
 }

 timelib_free(word);
 return value;
}
