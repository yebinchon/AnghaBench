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
typedef  int /*<<< orphan*/  szFormat ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  char* LPCOLESTR ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,char*) ; 

__attribute__((used)) static BOOL FUNC5( LPCOLESTR szLink )
{
    static const WCHAR szFormat[] = { ' ','-','w',' ','-','u',' ','"','%','s','"',0 };
    LONG len;
    LPWSTR buffer;
    BOOL ret;

    len = sizeof(szFormat) + FUNC2( szLink ) * sizeof(WCHAR);
    buffer = FUNC0( len );
    if( !buffer )
        return FALSE;

    FUNC4( buffer, szFormat, szLink );
    ret = FUNC3( buffer );
    FUNC1( buffer );
    return ret;
}