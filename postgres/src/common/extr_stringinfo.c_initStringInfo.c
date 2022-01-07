
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; int maxlen; } ;
typedef TYPE_1__* StringInfo ;


 scalar_t__ palloc (int) ;
 int resetStringInfo (TYPE_1__*) ;

void
initStringInfo(StringInfo str)
{
 int size = 1024;

 str->data = (char *) palloc(size);
 str->maxlen = size;
 resetStringInfo(str);
}
