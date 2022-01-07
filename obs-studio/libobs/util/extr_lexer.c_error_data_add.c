
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct error_item {char const* file; int level; int error; void* column; void* row; } ;
struct error_data {int errors; } ;


 int bstrdup (char const*) ;
 int da_push_back (int ,struct error_item*) ;

void error_data_add(struct error_data *data, const char *file, uint32_t row,
      uint32_t column, const char *msg, int level)
{
 struct error_item item;

 if (!data)
  return;

 item.file = file;
 item.row = row;
 item.column = column;
 item.level = level;
 item.error = bstrdup(msg);

 da_push_back(data->errors, &item);
}
