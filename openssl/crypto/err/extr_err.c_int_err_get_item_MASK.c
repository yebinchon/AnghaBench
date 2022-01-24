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
typedef  int /*<<< orphan*/  ERR_STRING_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  err_string_lock ; 
 int /*<<< orphan*/  int_error_hash ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static ERR_STRING_DATA *FUNC3(const ERR_STRING_DATA *d)
{
    ERR_STRING_DATA *p = NULL;

    FUNC0(err_string_lock);
    p = FUNC2(int_error_hash, d);
    FUNC1(err_string_lock);

    return p;
}