
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_item {int value; int name; } ;


 int dstr_free (int *) ;

__attribute__((used)) static inline void device_item_free(struct device_item *item)
{
 dstr_free(&item->name);
 dstr_free(&item->value);
}
