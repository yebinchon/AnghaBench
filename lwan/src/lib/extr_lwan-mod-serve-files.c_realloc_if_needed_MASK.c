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
struct lwan_value {size_t len; char* value; } ;

/* Variables and functions */
 char* FUNC0 (char*,size_t) ; 

__attribute__((used)) static void FUNC1(struct lwan_value *value, size_t bound)
{
    if (bound > value->len) {
        char *tmp = FUNC0(value->value, value->len);

        if (tmp)
            value->value = tmp;
    }
}