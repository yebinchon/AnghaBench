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
typedef  scalar_t__ Atom ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct vo_x11_state*,scalar_t__,char*,size_t) ; 

__attribute__((used)) static char *FUNC2(struct vo_x11_state *x11, Atom atom,
                                   char *buf, size_t buf_size)
{
    if (atom == FUNC0(x11->display, "UTF8_STRING", False))
        return "text";
    return FUNC1(x11, atom, buf, buf_size);
}