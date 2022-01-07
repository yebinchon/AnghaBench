
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int bufsize; int str; } ;
typedef TYPE_1__ metastring ;


 int IncreaseBuffer (TYPE_1__*,int) ;
 int strcat (int ,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void
MetaphAdd(metastring *s, const char *new_str)
{
 int add_length;

 if (new_str == ((void*)0))
  return;

 add_length = strlen(new_str);
 if ((s->length + add_length) > (s->bufsize - 1))
  IncreaseBuffer(s, add_length);

 strcat(s->str, new_str);
 s->length += add_length;
}
