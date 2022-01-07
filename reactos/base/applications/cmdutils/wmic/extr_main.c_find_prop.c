
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int SAFEARRAY ;
typedef scalar_t__ LONG ;
typedef int IWbemClassObject ;
typedef int BSTR ;


 scalar_t__ IWbemClassObject_GetNames (int *,int *,int ,int *,int **) ;
 scalar_t__ S_OK ;
 int SafeArrayDestroy (int *) ;
 int SafeArrayGetElement (int *,scalar_t__*,int *) ;
 int SafeArrayGetUBound (int *,int,scalar_t__*) ;
 int WBEM_FLAG_ALWAYS ;
 int strcmpiW (int ,int const*) ;
 int * strdupW (int ) ;

__attribute__((used)) static WCHAR *find_prop( IWbemClassObject *class, const WCHAR *prop )
{
    SAFEARRAY *sa;
    WCHAR *ret = ((void*)0);
    LONG i, last_index = 0;
    BSTR str;

    if (IWbemClassObject_GetNames( class, ((void*)0), WBEM_FLAG_ALWAYS, ((void*)0), &sa ) != S_OK) return ((void*)0);

    SafeArrayGetUBound( sa, 1, &last_index );
    for (i = 0; i <= last_index; i++)
    {
        SafeArrayGetElement( sa, &i, &str );
        if (!strcmpiW( str, prop ))
        {
            ret = strdupW( str );
            break;
        }
    }
    SafeArrayDestroy( sa );
    return ret;
}
