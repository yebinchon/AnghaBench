
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; scalar_t__ cursor; scalar_t__ len; } ;
typedef TYPE_1__* StringInfo ;



void
resetStringInfo(StringInfo str)
{
 str->data[0] = '\0';
 str->len = 0;
 str->cursor = 0;
}
