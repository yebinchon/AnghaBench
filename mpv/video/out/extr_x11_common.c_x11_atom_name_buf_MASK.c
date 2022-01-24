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
struct vo_x11_state {int /*<<< orphan*/  display; } ;
typedef  int /*<<< orphan*/  Atom ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,char*) ; 

__attribute__((used)) static char *FUNC3(struct vo_x11_state *x11, Atom atom,
                               char *buf, size_t buf_size)
{
    buf[0] = '\0';

    char *new_name = FUNC1(x11->display, atom);
    if (new_name) {
        FUNC2(buf, buf_size, "%s", new_name);
        FUNC0(new_name);
    }

    return buf;
}