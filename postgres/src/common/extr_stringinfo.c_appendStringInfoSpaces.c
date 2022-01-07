
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; size_t len; } ;
typedef TYPE_1__* StringInfo ;


 int enlargeStringInfo (TYPE_1__*,int) ;

void
appendStringInfoSpaces(StringInfo str, int count)
{
 if (count > 0)
 {

  enlargeStringInfo(str, count);


  while (--count >= 0)
   str->data[str->len++] = ' ';
  str->data[str->len] = '\0';
 }
}
