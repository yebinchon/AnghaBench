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
typedef  int /*<<< orphan*/  _buffer_info_t ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * _buffer_info_cache ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(PyObject *arr)
{
    PyObject *key, *item_list, *item;
    _buffer_info_t *info;
    int k;

    if (_buffer_info_cache == NULL) {
        return;
    }

    key = FUNC5((void*)arr);
    item_list = FUNC1(_buffer_info_cache, key);
    if (item_list != NULL) {
        for (k = 0; k < FUNC3(item_list); ++k) {
            item = FUNC2(item_list, k);
            info = (_buffer_info_t*)FUNC4(item);
            FUNC7(info);
        }
        FUNC0(_buffer_info_cache, key);
    }

    FUNC6(key);
}