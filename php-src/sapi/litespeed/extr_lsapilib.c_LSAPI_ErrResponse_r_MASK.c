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
typedef  int /*<<< orphan*/  LSAPI_Request ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

int FUNC5( LSAPI_Request * pReq, int code, const char ** pRespHeaders,
                         const char * pBody, int bodyLen )
{
    FUNC2( pReq, code );
    if ( pRespHeaders )
    {
        while( *pRespHeaders )
        {
            FUNC0( pReq, *pRespHeaders, FUNC4( *pRespHeaders ) );
            ++pRespHeaders;
        }
    }
    if ( pBody &&( bodyLen > 0 ))
    {
        FUNC3( pReq, pBody, bodyLen );
    }
    FUNC1( pReq );
    return 0;
}