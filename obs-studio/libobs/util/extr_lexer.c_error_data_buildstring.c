
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct error_item {int error; int column; int row; int file; } ;
struct TYPE_2__ {size_t num; struct error_item* array; } ;
struct error_data {TYPE_1__ errors; } ;
struct dstr {char* array; } ;


 int dstr_catf (struct dstr*,char*,int ,int ,int ,int ) ;
 int dstr_init (struct dstr*) ;

char *error_data_buildstring(struct error_data *ed)
{
 struct dstr str;
 struct error_item *items = ed->errors.array;
 size_t i;

 dstr_init(&str);
 for (i = 0; i < ed->errors.num; i++) {
  struct error_item *item = items + i;
  dstr_catf(&str, "%s (%u, %u): %s\n", item->file, item->row,
     item->column, item->error);
 }

 return str.array;
}
