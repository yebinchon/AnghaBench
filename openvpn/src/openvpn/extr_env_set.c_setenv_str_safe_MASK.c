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
struct env_set {int dummy; } ;
struct buffer {int dummy; } ;
typedef  int /*<<< orphan*/  b ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  M_WARN ; 
 scalar_t__ FUNC1 (struct buffer*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct env_set*,int /*<<< orphan*/ ,char const*) ; 

void
FUNC5(struct env_set *es, const char *name, const char *value)
{
    uint8_t b[64];
    struct buffer buf;
    FUNC2(&buf, b, sizeof(b));
    if (FUNC1(&buf, "OPENVPN_%s", name))
    {
        FUNC4(es, FUNC0(&buf), value);
    }
    else
    {
        FUNC3(M_WARN, "setenv_str_safe: name overflow");
    }
}