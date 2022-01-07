
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct editable_list_data {int filter; int default_path; } ;


 int bfree (int ) ;

__attribute__((used)) static inline void editable_list_data_free(struct editable_list_data *data)
{
 bfree(data->default_path);
 bfree(data->filter);
}
