
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_key_value {int key; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
key_value_compare(const void *a, const void *b)
{
    return strcmp(((struct lwan_key_value *)a)->key, ((struct lwan_key_value *)b)->key);
}
