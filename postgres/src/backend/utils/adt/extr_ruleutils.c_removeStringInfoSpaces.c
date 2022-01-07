
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; char* data; } ;
typedef TYPE_1__* StringInfo ;



__attribute__((used)) static void
removeStringInfoSpaces(StringInfo str)
{
 while (str->len > 0 && str->data[str->len - 1] == ' ')
  str->data[--(str->len)] = '\0';
}
