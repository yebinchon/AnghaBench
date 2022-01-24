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
typedef  int /*<<< orphan*/  vstr_t ;
typedef  char byte ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,size_t,int) ; 

void FUNC1(vstr_t *vstr, size_t byte_pos, byte b) {
    char *s = FUNC0(vstr, byte_pos, 1);
    *s = b;
}