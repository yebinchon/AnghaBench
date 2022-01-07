
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int si ;
typedef char WCHAR ;
struct TYPE_7__ {int hThread; int hProcess; } ;
struct TYPE_6__ {int cb; } ;
typedef TYPE_1__ STARTUPINFOW ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef char* LPWSTR ;
typedef int LONG ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (char const*) ;
 int CloseHandle (int ) ;
 scalar_t__ CreateProcessW (char*,char*,int *,int *,scalar_t__,int ,int *,int *,TYPE_1__*,TYPE_2__*) ;
 int DETACHED_PROCESS ;
 scalar_t__ FALSE ;
 int GetSystemDirectoryW (char*,int) ;
 int MAX_PATH ;
 int TRACE (char*,int ) ;
 int Wow64DisableWow64FsRedirection (void**) ;
 int Wow64RevertWow64FsRedirection (void*) ;
 int debugstr_w (char*) ;
 char* heap_alloc (int) ;
 int heap_free (char*) ;
 int lstrcatW (char*,char const*) ;
 int lstrcpyW (char*,char*) ;
 int lstrlenW (char const*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static BOOL run_winemenubuilder( const WCHAR *args )
{
    static const WCHAR menubuilder[] = {'\\','w','i','n','e','m','e','n','u','b','u','i','l','d','e','r','.','e','x','e',0};
    LONG len;
    LPWSTR buffer;
    STARTUPINFOW si;
    PROCESS_INFORMATION pi;
    BOOL ret;
    WCHAR app[MAX_PATH];
    void *redir;

    GetSystemDirectoryW( app, MAX_PATH - ARRAY_SIZE( menubuilder ));
    lstrcatW( app, menubuilder );

    len = (lstrlenW( app ) + lstrlenW( args ) + 1) * sizeof(WCHAR);
    buffer = heap_alloc( len );
    if( !buffer )
        return FALSE;

    lstrcpyW( buffer, app );
    lstrcatW( buffer, args );

    TRACE("starting %s\n",debugstr_w(buffer));

    memset(&si, 0, sizeof(si));
    si.cb = sizeof(si);

    Wow64DisableWow64FsRedirection( &redir );
    ret = CreateProcessW( app, buffer, ((void*)0), ((void*)0), FALSE, DETACHED_PROCESS, ((void*)0), ((void*)0), &si, &pi );
    Wow64RevertWow64FsRedirection( redir );

    heap_free( buffer );

    if (ret)
    {
        CloseHandle( pi.hProcess );
        CloseHandle( pi.hThread );
    }

    return ret;
}
