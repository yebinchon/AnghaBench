
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_sampler {int dummy; } ;
struct d3dx_parameter {char* data; scalar_t__ class; int type; int element_count; } ;
typedef int IUnknown ;
typedef int BOOL ;


 scalar_t__ D3DXPC_OBJECT ;
 int FIXME (char*,int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,char*) ;
 int IUnknown_Release (int *) ;
 int debug_d3dxparameter_type (int) ;
 int free_sampler (struct d3dx_sampler*) ;

__attribute__((used)) static void free_parameter_data(struct d3dx_parameter *param, BOOL child)
{
    if (!param->data)
        return;
    if (param->class == D3DXPC_OBJECT && !param->element_count)
    {
        switch (param->type)
        {
            case 134:
                HeapFree(GetProcessHeap(), 0, *(char **)param->data);
                break;

            case 133:
            case 132:
            case 131:
            case 130:
            case 129:
            case 140:
            case 128:
                if (*(IUnknown **)param->data) IUnknown_Release(*(IUnknown **)param->data);
                break;

            case 139:
            case 138:
            case 137:
            case 136:
            case 135:
                free_sampler((struct d3dx_sampler *)param->data);
                break;

            default:
                FIXME("Unhandled type %s\n", debug_d3dxparameter_type(param->type));
                break;
        }
    }
    if (!child)
        HeapFree(GetProcessHeap(), 0, param->data);
}
