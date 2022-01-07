
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {int len; int array; } ;
struct dstr {int array; } ;
struct darray {int dummy; } ;
struct config_item {int value; int name; } ;


 int bstrdup_n (int ,int ) ;
 int darray_push_back (int,struct darray*,struct config_item*) ;
 int dstr_init_copy_strref (struct dstr*,struct strref*) ;
 int unescape (struct dstr*) ;

__attribute__((used)) static void config_add_item(struct darray *items, struct strref *name,
       struct strref *value)
{
 struct config_item item;
 struct dstr item_value;
 dstr_init_copy_strref(&item_value, value);

 unescape(&item_value);

 item.name = bstrdup_n(name->array, name->len);
 item.value = item_value.array;
 darray_push_back(sizeof(struct config_item), items, &item);
}
