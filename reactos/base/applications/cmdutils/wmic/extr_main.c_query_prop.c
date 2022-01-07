
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int VARIANT ;
typedef int ULONG ;
typedef int LONG ;
typedef int IWbemServices ;
typedef int IWbemLocator ;
typedef int IWbemClassObject ;
typedef int IEnumWbemClassObject ;
typedef scalar_t__ HRESULT ;
typedef int * BSTR ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (char const*) ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_WbemLocator ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int CoInitialize (int *) ;
 int CoInitializeSecurity (int *,int,int *,int *,int ,int ,int *,int ,int *) ;
 int CoUninitialize () ;
 int EOAC_NONE ;
 scalar_t__ FALSE ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,char*) ;
 int IEnumWbemClassObject_Next (int *,int ,int,int **,int*) ;
 int IEnumWbemClassObject_Release (int *) ;
 int IEnumWbemClassObject_Reset (int *) ;
 int IID_IWbemLocator ;
 scalar_t__ IWbemClassObject_Get (int *,char*,int ,int *,int *,int *) ;
 int IWbemClassObject_Release (int *) ;
 scalar_t__ IWbemLocator_ConnectServer (int *,int *,int *,int *,int *,int ,int *,int *,int **) ;
 int IWbemLocator_Release (int *) ;
 scalar_t__ IWbemServices_ExecQuery (int *,int *,int *,int,int *,int **) ;
 int IWbemServices_Release (int *) ;
 int RPC_C_AUTHN_LEVEL_DEFAULT ;
 int RPC_C_IMP_LEVEL_IMPERSONATE ;
 int STRING_INVALID_QUERY ;
 scalar_t__ S_OK ;
 int * SysAllocString (char const*) ;
 int * SysAllocStringLen (int *,int) ;
 int SysFreeString (int *) ;
 scalar_t__ TRUE ;
 int VT_BSTR ;
 char const* V_BSTR (int *) ;
 int VariantChangeType (int *,int *,int ,int ) ;
 int VariantClear (int *) ;
 int WBEM_FLAG_FORWARD_ONLY ;
 int WBEM_FLAG_RETURN_IMMEDIATELY ;
 int WBEM_INFINITE ;
 scalar_t__ WBEM_S_NO_ERROR ;
 int WINE_TRACE (char*,int ,int ) ;
 int debugstr_w (char const*) ;
 char* find_prop (int *,char const*) ;
 int max (int ,int) ;
 int output_error (int ) ;
 int output_header (char*,int) ;
 int output_line (char const*,int) ;
 int strcatW (int *,char const*) ;
 int strcpyW (int *,char const*) ;
 int strlenW (char const*) ;

__attribute__((used)) static int query_prop( const WCHAR *class, const WCHAR *propname )
{
    static const WCHAR select_allW[] = {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',0};
    static const WCHAR cimv2W[] = {'R','O','O','T','\\','C','I','M','V','2',0};
    static const WCHAR wqlW[] = {'W','Q','L',0};
    HRESULT hr;
    IWbemLocator *locator = ((void*)0);
    IWbemServices *services = ((void*)0);
    IEnumWbemClassObject *result = ((void*)0);
    LONG flags = WBEM_FLAG_RETURN_IMMEDIATELY | WBEM_FLAG_FORWARD_ONLY;
    BSTR path = ((void*)0), wql = ((void*)0), query = ((void*)0);
    WCHAR *prop = ((void*)0);
    BOOL first = TRUE;
    int len, ret = -1;
    IWbemClassObject *obj;
    ULONG count, width = 0;
    VARIANT v;

    WINE_TRACE("%s, %s\n", debugstr_w(class), debugstr_w(propname));

    CoInitialize( ((void*)0) );
    CoInitializeSecurity( ((void*)0), -1, ((void*)0), ((void*)0), RPC_C_AUTHN_LEVEL_DEFAULT,
                          RPC_C_IMP_LEVEL_IMPERSONATE, ((void*)0), EOAC_NONE, ((void*)0) );

    hr = CoCreateInstance( &CLSID_WbemLocator, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IWbemLocator,
                           (void **)&locator );
    if (hr != S_OK) goto done;

    if (!(path = SysAllocString( cimv2W ))) goto done;
    hr = IWbemLocator_ConnectServer( locator, path, ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0), ((void*)0), &services );
    if (hr != S_OK) goto done;

    len = strlenW( class ) + ARRAY_SIZE(select_allW);
    if (!(query = SysAllocStringLen( ((void*)0), len ))) goto done;
    strcpyW( query, select_allW );
    strcatW( query, class );

    if (!(wql = SysAllocString( wqlW ))) goto done;
    hr = IWbemServices_ExecQuery( services, wql, query, flags, ((void*)0), &result );
    if (hr != S_OK) goto done;

    for (;;)
    {
        IEnumWbemClassObject_Next( result, WBEM_INFINITE, 1, &obj, &count );
        if (!count) break;

        if (!prop && !(prop = find_prop( obj, propname )))
        {
            output_error( STRING_INVALID_QUERY );
            goto done;
        }
        if (IWbemClassObject_Get( obj, prop, 0, &v, ((void*)0), ((void*)0) ) == WBEM_S_NO_ERROR)
        {
            VariantChangeType( &v, &v, 0, VT_BSTR );
            width = max( strlenW( V_BSTR( &v ) ), width );
            VariantClear( &v );
        }
        IWbemClassObject_Release( obj );
    }
    width += 2;

    IEnumWbemClassObject_Reset( result );
    for (;;)
    {
        IEnumWbemClassObject_Next( result, WBEM_INFINITE, 1, &obj, &count );
        if (!count) break;

        if (first)
        {
            output_header( prop, width );
            first = FALSE;
        }
        if (IWbemClassObject_Get( obj, prop, 0, &v, ((void*)0), ((void*)0) ) == WBEM_S_NO_ERROR)
        {
            VariantChangeType( &v, &v, 0, VT_BSTR );
            output_line( V_BSTR( &v ), width );
            VariantClear( &v );
        }
        IWbemClassObject_Release( obj );
    }
    ret = 0;

done:
    if (result) IEnumWbemClassObject_Release( result );
    if (services) IWbemServices_Release( services );
    if (locator) IWbemLocator_Release( locator );
    SysFreeString( path );
    SysFreeString( query );
    SysFreeString( wql );
    HeapFree( GetProcessHeap(), 0, prop );
    CoUninitialize();
    return ret;
}
