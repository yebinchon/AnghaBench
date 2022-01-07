
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int value; int name; } ;


 int bfree (int ) ;

__attribute__((used)) static inline void config_item_free(struct config_item *item)
{
 bfree(item->name);
 bfree(item->value);
}
