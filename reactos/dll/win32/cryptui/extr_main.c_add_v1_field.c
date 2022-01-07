
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v1_field {int create_detailed_value; int id; int * (* format ) (int ) ;} ;
struct detail_data {TYPE_1__* pCertViewInfo; } ;
typedef int WCHAR ;
struct TYPE_2__ {int pCertContext; } ;
typedef int HWND ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int add_string_id_and_value_to_list (int ,struct detail_data*,int ,int *,int ,int *) ;
 int * stub1 (int ) ;

__attribute__((used)) static void add_v1_field(HWND hwnd, struct detail_data *data,
 const struct v1_field *field)
{
    WCHAR *val = field->format(data->pCertViewInfo->pCertContext);

    if (val)
    {
        add_string_id_and_value_to_list(hwnd, data, field->id, val,
         field->create_detailed_value, ((void*)0));
        HeapFree(GetProcessHeap(), 0, val);
    }
}
