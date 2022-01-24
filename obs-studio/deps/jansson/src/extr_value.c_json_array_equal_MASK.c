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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(json_t *array1, json_t *array2)
{
    size_t i, size;

    size = FUNC1(array1);
    if(size != FUNC1(array2))
        return 0;

    for(i = 0; i < size; i++)
    {
        json_t *value1, *value2;

        value1 = FUNC0(array1, i);
        value2 = FUNC0(array2, i);

        if(!FUNC2(value1, value2))
            return 0;
    }

    return 1;
}