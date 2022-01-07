
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PCHAR ;
typedef int LPBYTE ;
typedef scalar_t__ HKEY ;
typedef scalar_t__ DWORD ;
typedef int CHAR ;


 int DH_DbgPrint (int ,char*) ;
 scalar_t__ ERROR_SUCCESS ;
 int MID_TRACE ;
 int RegCloseKey (scalar_t__) ;
 scalar_t__ RegOpenKey (scalar_t__,int *,scalar_t__*) ;
 scalar_t__ RegQueryValueEx (scalar_t__,int *,int *,int *,int ,scalar_t__*) ;
 int free (int *) ;
 scalar_t__ malloc (scalar_t__) ;
 scalar_t__ strlen (int *) ;

PCHAR RegReadString( HKEY Root, PCHAR Subkey, PCHAR Value ) {
    PCHAR SubOut = ((void*)0);
    DWORD SubOutLen = 0, Error = 0;
    HKEY ValueKey = ((void*)0);

    DH_DbgPrint(MID_TRACE,("Looking in %x:%s:%s\n", Root, Subkey, Value ));

    if( Subkey && strlen(Subkey) ) {
        if( RegOpenKey( Root, Subkey, &ValueKey ) != ERROR_SUCCESS )
            goto regerror;
    } else ValueKey = Root;

    DH_DbgPrint(MID_TRACE,("Got Key %x\n", ValueKey));

    if( (Error = RegQueryValueEx( ValueKey, Value, ((void*)0), ((void*)0),
                                  (LPBYTE)SubOut, &SubOutLen )) != ERROR_SUCCESS )
        goto regerror;

    DH_DbgPrint(MID_TRACE,("Value %s has size %d\n", Value, SubOutLen));

    if( !(SubOut = (CHAR*) malloc(SubOutLen)) )
        goto regerror;

    if( (Error = RegQueryValueEx( ValueKey, Value, ((void*)0), ((void*)0),
                                  (LPBYTE)SubOut, &SubOutLen )) != ERROR_SUCCESS )
        goto regerror;

    DH_DbgPrint(MID_TRACE,("Value %s is %s\n", Value, SubOut));

    goto cleanup;

regerror:
    if( SubOut ) { free( SubOut ); SubOut = ((void*)0); }
cleanup:
    if( ValueKey && ValueKey != Root ) {
        DH_DbgPrint(MID_TRACE,("Closing key %x\n", ValueKey));
        RegCloseKey( ValueKey );
    }

    DH_DbgPrint(MID_TRACE,("Returning %x with error %d\n", SubOut, Error));

    return SubOut;
}
