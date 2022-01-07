
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_entry {scalar_t__ deleted; int * source; int * changes; int * orig; } ;



void
_zip_entry_init(struct zip_entry *e)
{
    e->orig = ((void*)0);
    e->changes = ((void*)0);
    e->source = ((void*)0);
    e->deleted = 0;
}
