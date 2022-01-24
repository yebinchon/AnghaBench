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
typedef  int /*<<< orphan*/  achError ;
typedef  int /*<<< orphan*/  LSAPI_Request ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 () ; 
 int FUNC2 (char*,int,char*,int,char const*,char const*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC5( LSAPI_Request * pReq, const char * pErr1, const char *pErr2 )
{
    char achError[4096];
    int n = FUNC2(achError, sizeof(achError), "[%d] %s:%s: %s\n", FUNC1(),
                     pErr1, (pErr2)?pErr2:"", FUNC3(errno));
    if (n > (int)sizeof(achError))
        n = sizeof(achError);
    if ( pReq )
        FUNC0( pReq, achError, n );
    else
        FUNC4( STDERR_FILENO, achError, n );
    return 0;
}