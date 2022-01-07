
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tabs; int character_ranges; } ;
struct TYPE_3__ {int tabs; int character_ranges; } ;


 TYPE_2__ generic_default_format ;
 TYPE_1__ generic_typographic_format ;
 int heap_free (int ) ;

void free_generic_string_formats(void)
{
    heap_free(generic_default_format.character_ranges);
    heap_free(generic_default_format.tabs);

    heap_free(generic_typographic_format.character_ranges);
    heap_free(generic_typographic_format.tabs);
}
