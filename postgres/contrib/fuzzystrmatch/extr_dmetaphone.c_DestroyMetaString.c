
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* str; scalar_t__ free_string_on_destroy; } ;
typedef TYPE_1__ metastring ;


 int META_FREE (TYPE_1__*) ;

__attribute__((used)) static void
DestroyMetaString(metastring *s)
{
 if (s == ((void*)0))
  return;

 if (s->free_string_on_destroy && (s->str != ((void*)0)))
  META_FREE(s->str);

 META_FREE(s);
}
