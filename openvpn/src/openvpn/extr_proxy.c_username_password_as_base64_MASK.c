#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  password; int /*<<< orphan*/  username; } ;
struct http_proxy_info {TYPE_1__ up; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct buffer*) ; 
 struct buffer FUNC2 (scalar_t__,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,struct gc_arena*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC6(const struct http_proxy_info *p,
                            struct gc_arena *gc)
{
    struct buffer out = FUNC2(FUNC5(p->up.username) + FUNC5(p->up.password) + 2, gc);
    FUNC0(FUNC5(p->up.username) > 0);
    FUNC3(&out, "%s:%s", p->up.username, p->up.password);
    return (const char *)FUNC4((const uint8_t *)FUNC1(&out), gc);
}