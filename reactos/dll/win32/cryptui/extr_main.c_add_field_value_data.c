
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct field_value_data {int dummy; } ;
struct detail_data {int cFields; TYPE_1__* fields; } ;
typedef int create_detailed_value_func ;
struct TYPE_4__ {void* param; int * detailed_value; int create; } ;


 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 TYPE_1__* HeapReAlloc (int ,int ,TYPE_1__*,int) ;

__attribute__((used)) static void add_field_value_data(struct detail_data *data,
 create_detailed_value_func create, void *param)
{
    if (data->cFields)
        data->fields = HeapReAlloc(GetProcessHeap(), 0, data->fields,
         (data->cFields + 1) * sizeof(struct field_value_data));
    else
        data->fields = HeapAlloc(GetProcessHeap(), 0,
         sizeof(struct field_value_data));
    if (data->fields)
    {
        data->fields[data->cFields].create = create;
        data->fields[data->cFields].detailed_value = ((void*)0);
        data->fields[data->cFields].param = param;
        data->cFields++;
    }
}
