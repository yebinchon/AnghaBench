
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int maxlen; char* data; } ;
typedef TYPE_1__* StringInfo ;


 int enlargeStringInfo (TYPE_1__*,int) ;

void
appendStringInfoChar(StringInfo str, char ch)
{

 if (str->len + 1 >= str->maxlen)
  enlargeStringInfo(str, 1);


 str->data[str->len] = ch;
 str->len++;
 str->data[str->len] = '\0';
}
