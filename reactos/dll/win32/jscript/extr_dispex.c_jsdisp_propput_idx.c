
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsval_t ;
typedef int jsdisp_t ;
typedef char WCHAR ;
typedef int HRESULT ;
typedef char* DWORD ;


 int jsdisp_propput_name (int *,char*,int ) ;
 int swprintf (char*,char const*,char*) ;

HRESULT jsdisp_propput_idx(jsdisp_t *obj, DWORD idx, jsval_t val)
{
    WCHAR buf[12];

    static const WCHAR formatW[] = {'%','d',0};

    swprintf(buf, formatW, idx);
    return jsdisp_propput_name(obj, buf, val);
}
