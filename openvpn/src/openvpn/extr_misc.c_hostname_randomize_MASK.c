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
typedef  int /*<<< orphan*/  uint8_t ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;
typedef  int /*<<< orphan*/  rnd_bytes ;

/* Variables and functions */
 char const* FUNC0 (struct buffer*) ; 
 struct buffer FUNC1 (scalar_t__,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,char*,char const*,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct gc_arena*) ; 
 int n_rnd_bytes ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (char const*) ; 

const char *
FUNC6(const char *hostname, struct gc_arena *gc)
{
#define n_rnd_bytes 6

    uint8_t rnd_bytes[n_rnd_bytes];
    const char *rnd_str;
    struct buffer hname = FUNC1(FUNC5(hostname)+sizeof(rnd_bytes)*2+4, gc);

    FUNC4(rnd_bytes, sizeof(rnd_bytes));
    rnd_str = FUNC3(rnd_bytes, sizeof(rnd_bytes), 40, 0, NULL, gc);
    FUNC2(&hname, "%s.%s", rnd_str, hostname);
    return FUNC0(&hname);
#undef n_rnd_bytes
}