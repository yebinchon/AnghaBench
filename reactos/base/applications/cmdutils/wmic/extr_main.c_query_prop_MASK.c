#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int ULONG ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  IWbemServices ;
typedef  int /*<<< orphan*/  IWbemLocator ;
typedef  int /*<<< orphan*/  IWbemClassObject ;
typedef  int /*<<< orphan*/  IEnumWbemClassObject ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_WbemLocator ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  EOAC_NONE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IWbemLocator ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RPC_C_AUTHN_LEVEL_DEFAULT ; 
 int /*<<< orphan*/  RPC_C_IMP_LEVEL_IMPERSONATE ; 
 int /*<<< orphan*/  STRING_INVALID_QUERY ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC16 (char const*) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VT_BSTR ; 
 char const* FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int WBEM_FLAG_FORWARD_ONLY ; 
 int WBEM_FLAG_RETURN_IMMEDIATELY ; 
 int /*<<< orphan*/  WBEM_INFINITE ; 
 scalar_t__ WBEM_S_NO_ERROR ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char const*) ; 
 char* FUNC24 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC25 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*,int) ; 
 int /*<<< orphan*/  FUNC28 (char const*,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC31 (char const*) ; 

__attribute__((used)) static int FUNC32( const WCHAR *class, const WCHAR *propname )
{
    static const WCHAR select_allW[] = {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',0};
    static const WCHAR cimv2W[] = {'R','O','O','T','\\','C','I','M','V','2',0};
    static const WCHAR wqlW[] = {'W','Q','L',0};
    HRESULT hr;
    IWbemLocator *locator = NULL;
    IWbemServices *services = NULL;
    IEnumWbemClassObject *result = NULL;
    LONG flags = WBEM_FLAG_RETURN_IMMEDIATELY | WBEM_FLAG_FORWARD_ONLY;
    BSTR path = NULL, wql = NULL, query = NULL;
    WCHAR *prop = NULL;
    BOOL first = TRUE;
    int len, ret = -1;
    IWbemClassObject *obj;
    ULONG count, width = 0;
    VARIANT v;

    FUNC22("%s, %s\n", FUNC23(class), FUNC23(propname));

    FUNC2( NULL );
    FUNC3( NULL, -1, NULL, NULL, RPC_C_AUTHN_LEVEL_DEFAULT,
                          RPC_C_IMP_LEVEL_IMPERSONATE, NULL, EOAC_NONE, NULL );

    hr = FUNC1( &CLSID_WbemLocator, NULL, CLSCTX_INPROC_SERVER, &IID_IWbemLocator,
                           (void **)&locator );
    if (hr != S_OK) goto done;

    if (!(path = FUNC16( cimv2W ))) goto done;
    hr = FUNC12( locator, path, NULL, NULL, NULL, 0, NULL, NULL, &services );
    if (hr != S_OK) goto done;

    len = FUNC31( class ) + FUNC0(select_allW);
    if (!(query = FUNC17( NULL, len ))) goto done;
    FUNC30( query, select_allW );
    FUNC29( query, class );

    if (!(wql = FUNC16( wqlW ))) goto done;
    hr = FUNC14( services, wql, query, flags, NULL, &result );
    if (hr != S_OK) goto done;

    for (;;) /* get column width */
    {
        FUNC7( result, WBEM_INFINITE, 1, &obj, &count );
        if (!count) break;

        if (!prop && !(prop = FUNC24( obj, propname )))
        {
            FUNC26( STRING_INVALID_QUERY );
            goto done;
        }
        if (FUNC10( obj, prop, 0, &v, NULL, NULL ) == WBEM_S_NO_ERROR)
        {
            FUNC20( &v, &v, 0, VT_BSTR );
            width = FUNC25( FUNC31( FUNC19( &v ) ), width );
            FUNC21( &v );
        }
        FUNC11( obj );
    }
    width += 2;

    FUNC9( result );
    for (;;)
    {
        FUNC7( result, WBEM_INFINITE, 1, &obj, &count );
        if (!count) break;

        if (first)
        {
            FUNC27( prop, width );
            first = FALSE;
        }
        if (FUNC10( obj, prop, 0, &v, NULL, NULL ) == WBEM_S_NO_ERROR)
        {
            FUNC20( &v, &v, 0, VT_BSTR );
            FUNC28( FUNC19( &v ), width );
            FUNC21( &v );
        }
        FUNC11( obj );
    }
    ret = 0;

done:
    if (result) FUNC8( result );
    if (services) FUNC15( services );
    if (locator) FUNC13( locator );
    FUNC18( path );
    FUNC18( query );
    FUNC18( wql );
    FUNC6( FUNC5(), 0, prop );
    FUNC4();
    return ret;
}