#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ u; } ;
struct wgl_dc_data {struct wgl_dc_data* next; int /*<<< orphan*/  nb_sw_formats; scalar_t__ nb_icd_formats; TYPE_2__* icd_data; int /*<<< orphan*/ * sw_data; scalar_t__ pixelformat; int /*<<< orphan*/  flags; TYPE_1__ owner; } ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int /*<<< orphan*/ * DriverName; scalar_t__ (* DrvDescribePixelFormat ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  PIXELFORMATDESCRIPTOR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct wgl_dc_data* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ OBJ_DC ; 
 scalar_t__ OBJ_MEMDC ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WGL_DC_OBJ_DC ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dc_data_cs ; 
 struct wgl_dc_data* dc_data_list ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
struct wgl_dc_data*
FUNC10(HDC hdc, INT format, UINT size, PIXELFORMATDESCRIPTOR *descr)
{
    HWND hwnd = NULL;
    struct wgl_dc_data* data;
    DWORD objType = FUNC1(hdc);
    ULONG flags = 0;
    union
    {
        HWND hwnd;
        HDC hdc;
        HANDLE u;
    } id;
    
    /* Look for the right data identifier */
    if(objType == OBJ_DC)
    {
        hwnd = FUNC7(hdc);
        if(!hwnd)
            return NULL;
        id.hwnd = hwnd;
        flags = WGL_DC_OBJ_DC;
    }
    else if(objType == OBJ_MEMDC)
    {
        id.hdc = hdc;
    }
    else
    {
        return NULL;
    }

    FUNC0(&dc_data_cs);
    data = dc_data_list;
    while(data)
    {
        if(data->owner.u == id.u)
        {
            FUNC5(&dc_data_cs);
            return data;
        }
        data = data->next;
    }
    data= FUNC3(FUNC2(), 0, sizeof(*data));
    if(!data)
    {
        FUNC5(&dc_data_cs);
        return NULL;
    }
    /* initialize the structure */
    data->owner.u = id.u;
    data->flags = flags;
    data->pixelformat = 0;
    data->sw_data = NULL;
    /* Load the driver */
    data->icd_data = FUNC4(hdc);
    /* Get the number of available formats for this DC once and for all */
    if(data->icd_data)
        data->nb_icd_formats = data->icd_data->DrvDescribePixelFormat(hdc, format, size, descr);
    else
        data->nb_icd_formats = 0;
    FUNC6("ICD %S has %u formats for HDC %x.\n", data->icd_data ? data->icd_data->DriverName : NULL, data->nb_icd_formats, hdc);
    data->nb_sw_formats = FUNC9(hdc, 0, 0, NULL);
    data->next = dc_data_list;
    dc_data_list = data;
    FUNC5(&dc_data_cs);
    return data;
}