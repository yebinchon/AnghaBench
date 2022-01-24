#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  si ;
typedef  char WCHAR ;
struct TYPE_7__ {int /*<<< orphan*/  hThread; int /*<<< orphan*/  hProcess; } ;
struct TYPE_6__ {int cb; } ;
typedef  TYPE_1__ STARTUPINFOW ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  char* LPWSTR ;
typedef  int LONG ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  DETACHED_PROCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void**) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL FUNC14( const WCHAR *args )
{
    static const WCHAR menubuilder[] = {'\\','w','i','n','e','m','e','n','u','b','u','i','l','d','e','r','.','e','x','e',0};
    LONG len;
    LPWSTR buffer;
    STARTUPINFOW si;
    PROCESS_INFORMATION pi;
    BOOL ret;
    WCHAR app[MAX_PATH];
    void *redir;

    FUNC3( app, MAX_PATH - FUNC0( menubuilder ));
    FUNC10( app, menubuilder );

    len = (FUNC12( app ) + FUNC12( args ) + 1) * sizeof(WCHAR);
    buffer = FUNC8( len );
    if( !buffer )
        return FALSE;

    FUNC11( buffer, app );
    FUNC10( buffer, args );

    FUNC4("starting %s\n",FUNC7(buffer));

    FUNC13(&si, 0, sizeof(si));
    si.cb = sizeof(si);

    FUNC5( &redir );
    ret = FUNC2( app, buffer, NULL, NULL, FALSE, DETACHED_PROCESS, NULL, NULL, &si, &pi );
    FUNC6( redir );

    FUNC9( buffer );

    if (ret)
    {
        FUNC1( pi.hProcess );
        FUNC1( pi.hThread );
    }

    return ret;
}