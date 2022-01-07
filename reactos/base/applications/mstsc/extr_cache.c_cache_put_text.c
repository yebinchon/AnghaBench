
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8 ;
struct TYPE_3__ {int size; int * data; } ;
typedef TYPE_1__ DATABLOB ;


 TYPE_1__* g_textcache ;
 int memcpy (int *,void*,int) ;
 int xfree (int *) ;
 int * xmalloc (int) ;

void
cache_put_text(uint8 cache_id, void *data, int length)
{
 DATABLOB *text;

 text = &g_textcache[cache_id];
 if (text->data != ((void*)0))
  xfree(text->data);
 text->data = xmalloc(length);
 text->size = length;
 memcpy(text->data, data, length);
}
