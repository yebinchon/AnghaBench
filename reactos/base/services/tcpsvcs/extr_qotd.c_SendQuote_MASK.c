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
typedef  int /*<<< orphan*/  SOCKET ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ SOCKET_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static BOOL
FUNC2(SOCKET sock, char* Quote)
{
    INT strSize = FUNC1(Quote);
    if (FUNC0(sock, Quote, strSize, 0) == SOCKET_ERROR)
        return FALSE;

    return TRUE;
}