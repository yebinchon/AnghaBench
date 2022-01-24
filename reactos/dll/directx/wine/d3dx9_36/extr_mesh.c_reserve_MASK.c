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
struct dynamic_array {int capacity; void* items; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static BOOL FUNC4(struct dynamic_array *array, int count, int itemsize)
{
    if (count > array->capacity) {
        void *new_buffer;
        int new_capacity;
        if (array->items && array->capacity) {
            new_capacity = FUNC3(array->capacity * 2, count);
            new_buffer = FUNC2(FUNC0(), 0, array->items, new_capacity * itemsize);
        } else {
            new_capacity = FUNC3(16, count);
            new_buffer = FUNC1(FUNC0(), 0, new_capacity * itemsize);
        }
        if (!new_buffer)
            return FALSE;
        array->items = new_buffer;
        array->capacity = new_capacity;
    }
    return TRUE;
}