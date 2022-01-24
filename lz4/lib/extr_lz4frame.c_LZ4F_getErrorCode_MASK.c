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
typedef  int /*<<< orphan*/  ptrdiff_t ;
typedef  int /*<<< orphan*/  LZ4F_errorCodes ;

/* Variables and functions */
 int /*<<< orphan*/  LZ4F_OK_NoError ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 

LZ4F_errorCodes FUNC1(size_t functionResult)
{
    if (!FUNC0(functionResult)) return LZ4F_OK_NoError;
    return (LZ4F_errorCodes)(-(ptrdiff_t)functionResult);
}