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
typedef  int /*<<< orphan*/  strbuffer_t ;
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
 int /*<<< orphan*/  dump_to_strbuffer ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,void*,size_t) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

char *FUNC5(const json_t *json, size_t flags)
{
    strbuffer_t strbuff;
    char *result;

    if(FUNC3(&strbuff))
        return NULL;

    if(FUNC0(json, dump_to_strbuffer, (void *)&strbuff, flags))
        result = NULL;
    else
        result = FUNC1(FUNC4(&strbuff));

    FUNC2(&strbuff);
    return result;
}