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
typedef  int /*<<< orphan*/  sz_ip ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,unsigned int) ; 
 int global_debug_level ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(int level, unsigned ip, unsigned port, const char *fmt, va_list marker)
{
    if (level <= global_debug_level) {
        char sz_ip[16];

        FUNC2(sz_ip, sizeof(sz_ip), "%u.%u.%u.%u",
            (ip>>24)&0xFF, (ip>>16)&0xFF, (ip>>8)&0xFF, (ip>>0)&0xFF);
        FUNC1(stderr, "%-15s:%5u: ", sz_ip, port);
        FUNC3(stderr, fmt, marker);
        FUNC0(stderr);
    }
}