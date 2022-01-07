
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_key_value_array {int dummy; } ;


 int lwan_key_value_array_reset (struct lwan_key_value_array*) ;

__attribute__((used)) static void
reset_key_value_array(void *data)
{
    struct lwan_key_value_array *array = data;

    lwan_key_value_array_reset(array);
}
