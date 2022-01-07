
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct error_item {int dummy; } ;


 int error_item_free (struct error_item*) ;

__attribute__((used)) static inline void error_item_array_free(struct error_item *array, size_t num)
{
 size_t i;
 for (i = 0; i < num; i++)
  error_item_free(array + i);
}
