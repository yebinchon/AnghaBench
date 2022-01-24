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
typedef  int /*<<< orphan*/ * PCHAR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  MID_TRACE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

PCHAR FUNC7( HKEY Root, PCHAR Subkey, PCHAR Value ) {
    PCHAR SubOut = NULL;
    DWORD SubOutLen = 0, Error = 0;
    HKEY  ValueKey = NULL;

    FUNC0(MID_TRACE,("Looking in %x:%s:%s\n", Root, Subkey, Value ));

    if( Subkey && FUNC6(Subkey) ) {
        if( FUNC2( Root, Subkey, &ValueKey ) != ERROR_SUCCESS )
            goto regerror;
    } else ValueKey = Root;

    FUNC0(MID_TRACE,("Got Key %x\n", ValueKey));

    if( (Error = FUNC3( ValueKey, Value, NULL, NULL,
                                  (LPBYTE)SubOut, &SubOutLen )) != ERROR_SUCCESS )
        goto regerror;

    FUNC0(MID_TRACE,("Value %s has size %d\n", Value, SubOutLen));

    if( !(SubOut = (CHAR*) FUNC5(SubOutLen)) )
        goto regerror;

    if( (Error = FUNC3( ValueKey, Value, NULL, NULL,
                                  (LPBYTE)SubOut, &SubOutLen )) != ERROR_SUCCESS )
        goto regerror;

    FUNC0(MID_TRACE,("Value %s is %s\n", Value, SubOut));

    goto cleanup;

regerror:
    if( SubOut ) { FUNC4( SubOut ); SubOut = NULL; }
cleanup:
    if( ValueKey && ValueKey != Root ) {
        FUNC0(MID_TRACE,("Closing key %x\n", ValueKey));
        FUNC1( ValueKey );
    }

    FUNC0(MID_TRACE,("Returning %x with error %d\n", SubOut, Error));

    return SubOut;
}