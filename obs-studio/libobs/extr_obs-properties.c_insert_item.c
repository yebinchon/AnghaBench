
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_item {long long ll; double d; void* str; void* name; int * member_0; } ;
struct list_data {scalar_t__ format; int items; } ;


 scalar_t__ OBS_COMBO_FORMAT_FLOAT ;
 scalar_t__ OBS_COMBO_FORMAT_INT ;
 void* bstrdup (void const*) ;
 int da_insert (int ,size_t,struct list_item*) ;

__attribute__((used)) static void insert_item(struct list_data *data, size_t idx, const char *name,
   const void *val)
{
 struct list_item item = {((void*)0)};
 item.name = bstrdup(name);

 if (data->format == OBS_COMBO_FORMAT_INT)
  item.ll = *(const long long *)val;
 else if (data->format == OBS_COMBO_FORMAT_FLOAT)
  item.d = *(const double *)val;
 else
  item.str = bstrdup(val);

 da_insert(data->items, idx, &item);
}
