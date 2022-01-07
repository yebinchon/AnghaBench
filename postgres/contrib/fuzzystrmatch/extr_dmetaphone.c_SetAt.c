
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; char* str; } ;
typedef TYPE_1__ metastring ;



__attribute__((used)) static void
SetAt(metastring *s, int pos, char c)
{
 if ((pos < 0) || (pos >= s->length))
  return;

 *(s->str + pos) = c;
}
