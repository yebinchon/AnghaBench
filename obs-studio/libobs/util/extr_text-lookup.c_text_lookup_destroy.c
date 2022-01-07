
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int top; int language; } ;
typedef TYPE_1__ lookup_t ;


 int bfree (TYPE_1__*) ;
 int dstr_free (int *) ;
 int text_node_destroy (int ) ;

void text_lookup_destroy(lookup_t *lookup)
{
 if (lookup) {
  dstr_free(&lookup->language);
  text_node_destroy(lookup->top);

  bfree(lookup);
 }
}
