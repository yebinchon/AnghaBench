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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const**,int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(void)
{
    const char *data;

    FUNC0(0, ERR_R_MALLOC_FAILURE);
    FUNC1(1, "hello ");
    FUNC1(1, "world");
    FUNC2(&data, NULL);
    return FUNC3(data, "hello world");
}