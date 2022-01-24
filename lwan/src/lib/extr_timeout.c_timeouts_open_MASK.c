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
typedef  int /*<<< orphan*/  timeout_error_t ;
struct timeouts {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 struct timeouts* FUNC0 (int,int) ; 
 struct timeouts* FUNC1 (struct timeouts*) ; 

struct timeouts *FUNC2(timeout_error_t *error)
{
    struct timeouts *T;

    if ((T = FUNC0(sizeof *T, 64)))
        return FUNC1(T);

    *error = errno;

    return NULL;
}