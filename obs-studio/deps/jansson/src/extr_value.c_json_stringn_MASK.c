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
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char const*,size_t) ; 

json_t *FUNC2(const char *value, size_t len)
{
    if(!value || !FUNC1(value, len))
        return NULL;

    return FUNC0(value, len);
}