#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t int_no; } ;
typedef  TYPE_1__ registers_t ;

/* Variables and functions */
 char** exception_messages ; 
 int /*<<< orphan*/  FUNC0 (size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(registers_t *r) {
    FUNC1("received interrupt: ");
    char s[3];
    FUNC0(r->int_no, s);
    FUNC1(s);
    FUNC1("\n");
    FUNC1(exception_messages[r->int_no]);
    FUNC1("\n");
}