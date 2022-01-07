
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int WCHAR ;
typedef int HRESULT ;


 int PROPF_CONFIGURABLE ;
 int PROPF_ENUMERABLE ;
 int PROPF_WRITABLE ;
 int jsdisp_propput (int *,int const*,int,int ) ;

HRESULT jsdisp_propput_name(jsdisp_t *obj, const WCHAR *name, jsval_t val)
{
    return jsdisp_propput(obj, name, PROPF_ENUMERABLE | PROPF_CONFIGURABLE | PROPF_WRITABLE, val);
}
