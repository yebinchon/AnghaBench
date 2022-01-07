
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; scalar_t__* str; } ;
typedef TYPE_1__ metastring ;



__attribute__((used)) static char
GetAt(metastring *s, int pos)
{
 if ((pos < 0) || (pos >= s->length))
  return '\0';

 return ((char) *(s->str + pos));
}
