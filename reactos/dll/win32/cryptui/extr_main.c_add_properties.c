
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct detail_data {TYPE_1__* pCertViewInfo; } ;
typedef int WCHAR ;
struct TYPE_5__ {int id; int * (* prop_to_value ) (int *,size_t) ;scalar_t__ prop_is_string; int prop; } ;
struct TYPE_4__ {int pCertContext; } ;
typedef int PCCERT_CONTEXT ;
typedef int * LPWSTR ;
typedef int HWND ;
typedef size_t DWORD ;
typedef int BYTE ;


 size_t ARRAY_SIZE (TYPE_2__*) ;
 scalar_t__ CertGetCertificateContextProperty (int ,int ,int *,size_t*) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,size_t) ;
 int HeapFree (int ,int ,int *) ;
 int add_string_id_and_value_to_list (int ,struct detail_data*,int ,int *,int *,int *) ;
 TYPE_2__* prop_id_map ;
 int * stub1 (int *,size_t) ;

__attribute__((used)) static void add_properties(HWND hwnd, struct detail_data *data)
{
    DWORD i;
    PCCERT_CONTEXT cert = data->pCertViewInfo->pCertContext;

    for (i = 0; i < ARRAY_SIZE(prop_id_map); i++)
    {
        DWORD cb;

        if (CertGetCertificateContextProperty(cert, prop_id_map[i].prop, ((void*)0),
         &cb))
        {
            BYTE *pb;
            WCHAR *val = ((void*)0);




            pb = HeapAlloc(GetProcessHeap(), 0, cb);
            if (pb)
            {
                if (CertGetCertificateContextProperty(cert,
                 prop_id_map[i].prop, pb, &cb))
                {
                    if (prop_id_map[i].prop_is_string)
                    {
                        val = (LPWSTR)pb;

                        pb = ((void*)0);
                    }
                    else
                        val = prop_id_map[i].prop_to_value(pb, cb);
                }
                HeapFree(GetProcessHeap(), 0, pb);
            }
            add_string_id_and_value_to_list(hwnd, data, prop_id_map[i].id, val,
             ((void*)0), ((void*)0));
        }
    }
}
