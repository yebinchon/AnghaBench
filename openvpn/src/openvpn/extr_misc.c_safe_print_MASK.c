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
struct gc_arena {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC_CRLF ; 
 int /*<<< orphan*/  CC_PRINT ; 
 char const* FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,struct gc_arena*) ; 

const char *
FUNC1(const char *str, struct gc_arena *gc)
{
    return FUNC0(str, CC_PRINT, CC_CRLF, '.', gc);
}