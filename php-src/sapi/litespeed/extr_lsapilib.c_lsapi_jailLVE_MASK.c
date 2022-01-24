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
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {int dummy; } ;
typedef  int /*<<< orphan*/  LSAPI_Request ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct passwd*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC3 (struct passwd*,char*) ; 

__attribute__((used)) static int FUNC4( LSAPI_Request * pReq, uid_t uid, struct passwd * pw )
{
    int ret = 0;
#if defined(linux) || defined(__linux) || defined(__linux__) || defined(__gnu_linux__)
    char  error_msg[1024] = "";
    ret = FUNC1)( pw, error_msg );
    if ( ret < 0 )
    {
        FUNC2("LSAPI: LVE jail(%d) ressult: %d, error: %s !\n",
                  uid, ret, error_msg );
        FUNC0( pReq, "LSAPI: jail() failure.", NULL );
        return -1;
    }
#endif
    return ret;
}