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
typedef  int /*<<< orphan*/  va_list ;
struct mp_log {int dummy; } ;

/* Variables and functions */
 int* map_ass_level ; 
 int /*<<< orphan*/  FUNC0 (struct mp_log*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_log*,int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(int level, const char *format, va_list va, void *ctx)
{
    struct mp_log *log = ctx;
    if (!log)
        return;
    level = map_ass_level[level];
    FUNC1(log, level, format, va);
    // libass messages lack trailing \n
    FUNC0(log, level, "\n");
}