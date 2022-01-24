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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * _buffer_info_cache ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static _buffer_info_t*
FUNC15(PyObject *obj)
{
    PyObject *key = NULL, *item_list = NULL, *item = NULL;
    _buffer_info_t *info = NULL, *old_info = NULL;

    if (_buffer_info_cache == NULL) {
        _buffer_info_cache = FUNC1();
        if (_buffer_info_cache == NULL) {
            return NULL;
        }
    }

    /* Compute information */
    info = FUNC14(obj);
    if (info == NULL) {
        return NULL;
    }

    /* Check if it is identical with an old one; reuse old one, if yes */
    key = FUNC8((void*)obj);
    if (key == NULL) {
        goto fail;
    }
    item_list = FUNC0(_buffer_info_cache, key);

    if (item_list != NULL) {
        FUNC10(item_list);
        if (FUNC4(item_list) > 0) {
            item = FUNC5(item_list, FUNC4(item_list) - 1);
            old_info = (_buffer_info_t*)FUNC7(item);

            if (FUNC12(info, old_info) == 0) {
                FUNC13(info);
                info = old_info;
            }
        }
    }
    else {
        item_list = FUNC6(0);
        if (item_list == NULL) {
            goto fail;
        }
        if (FUNC2(_buffer_info_cache, key, item_list) != 0) {
            goto fail;
        }
    }

    if (info != old_info) {
        /* Needs insertion */
        item = FUNC8((void*)info);
        if (item == NULL) {
            goto fail;
        }
        FUNC3(item_list, item);
        FUNC9(item);
    }

    FUNC9(item_list);
    FUNC9(key);
    return info;

fail:
    if (info != NULL && info != old_info) {
        FUNC13(info);
    }
    FUNC11(item_list);
    FUNC11(key);
    return NULL;
}