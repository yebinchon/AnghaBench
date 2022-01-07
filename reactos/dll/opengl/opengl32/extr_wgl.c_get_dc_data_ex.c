
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ u; } ;
struct wgl_dc_data {struct wgl_dc_data* next; int nb_sw_formats; scalar_t__ nb_icd_formats; TYPE_2__* icd_data; int * sw_data; scalar_t__ pixelformat; int flags; TYPE_1__ owner; } ;
typedef int ULONG ;
typedef int UINT ;
struct TYPE_4__ {int * DriverName; scalar_t__ (* DrvDescribePixelFormat ) (int ,int ,int ,int *) ;} ;
typedef int PIXELFORMATDESCRIPTOR ;
typedef int INT ;
typedef int * HWND ;
typedef int HDC ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int EnterCriticalSection (int *) ;
 scalar_t__ GetObjectType (int ) ;
 int GetProcessHeap () ;
 struct wgl_dc_data* HeapAlloc (int ,int ,int) ;
 TYPE_2__* IntGetIcdData (int ) ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ OBJ_DC ;
 scalar_t__ OBJ_MEMDC ;
 int TRACE (char*,int *,scalar_t__,int ) ;
 int WGL_DC_OBJ_DC ;
 int * WindowFromDC (int ) ;
 int dc_data_cs ;
 struct wgl_dc_data* dc_data_list ;
 scalar_t__ stub1 (int ,int ,int ,int *) ;
 int sw_DescribePixelFormat (int ,int ,int ,int *) ;

__attribute__((used)) static
struct wgl_dc_data*
get_dc_data_ex(HDC hdc, INT format, UINT size, PIXELFORMATDESCRIPTOR *descr)
{
    HWND hwnd = ((void*)0);
    struct wgl_dc_data* data;
    DWORD objType = GetObjectType(hdc);
    ULONG flags = 0;
    union
    {
        HWND hwnd;
        HDC hdc;
        HANDLE u;
    } id;


    if(objType == OBJ_DC)
    {
        hwnd = WindowFromDC(hdc);
        if(!hwnd)
            return ((void*)0);
        id.hwnd = hwnd;
        flags = WGL_DC_OBJ_DC;
    }
    else if(objType == OBJ_MEMDC)
    {
        id.hdc = hdc;
    }
    else
    {
        return ((void*)0);
    }

    EnterCriticalSection(&dc_data_cs);
    data = dc_data_list;
    while(data)
    {
        if(data->owner.u == id.u)
        {
            LeaveCriticalSection(&dc_data_cs);
            return data;
        }
        data = data->next;
    }
    data= HeapAlloc(GetProcessHeap(), 0, sizeof(*data));
    if(!data)
    {
        LeaveCriticalSection(&dc_data_cs);
        return ((void*)0);
    }

    data->owner.u = id.u;
    data->flags = flags;
    data->pixelformat = 0;
    data->sw_data = ((void*)0);

    data->icd_data = IntGetIcdData(hdc);

    if(data->icd_data)
        data->nb_icd_formats = data->icd_data->DrvDescribePixelFormat(hdc, format, size, descr);
    else
        data->nb_icd_formats = 0;
    TRACE("ICD %S has %u formats for HDC %x.\n", data->icd_data ? data->icd_data->DriverName : ((void*)0), data->nb_icd_formats, hdc);
    data->nb_sw_formats = sw_DescribePixelFormat(hdc, 0, 0, ((void*)0));
    data->next = dc_data_list;
    dc_data_list = data;
    LeaveCriticalSection(&dc_data_cs);
    return data;
}
