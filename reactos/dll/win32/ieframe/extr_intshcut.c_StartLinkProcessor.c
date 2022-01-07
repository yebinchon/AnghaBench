
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szFormat ;
typedef char WCHAR ;
typedef int LPWSTR ;
typedef char* LPCOLESTR ;
typedef int LONG ;
typedef int BOOL ;


 int FALSE ;
 int heap_alloc (int) ;
 int heap_free (int ) ;
 int lstrlenW (char*) ;
 int run_winemenubuilder (int ) ;
 int swprintf (int ,char const*,char*) ;

__attribute__((used)) static BOOL StartLinkProcessor( LPCOLESTR szLink )
{
    static const WCHAR szFormat[] = { ' ','-','w',' ','-','u',' ','"','%','s','"',0 };
    LONG len;
    LPWSTR buffer;
    BOOL ret;

    len = sizeof(szFormat) + lstrlenW( szLink ) * sizeof(WCHAR);
    buffer = heap_alloc( len );
    if( !buffer )
        return FALSE;

    swprintf( buffer, szFormat, szLink );
    ret = run_winemenubuilder( buffer );
    heap_free( buffer );
    return ret;
}
