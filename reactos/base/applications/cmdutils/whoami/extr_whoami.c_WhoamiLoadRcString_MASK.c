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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int RC_STRING_MAX_SIZE ; 

LPWSTR FUNC2(INT ResId)
{
    #define RC_STRING_MAX_SIZE 850
    static WCHAR TmpBuffer[RC_STRING_MAX_SIZE];

    FUNC1(FUNC0(NULL), ResId, TmpBuffer, RC_STRING_MAX_SIZE);

    return TmpBuffer;
}