#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ len; scalar_t__ value; int /*<<< orphan*/  error; int /*<<< orphan*/  mmgr; } ;
typedef  scalar_t__ HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  TYPE_1__* HPDF_Binary ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  HPDF_BINARY_LENGTH_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ HPDF_LIMIT_MAX_STRING_LEN ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  HPDF_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HPDF_STATUS
FUNC5  (HPDF_Binary  obj,
                       HPDF_BYTE    *value,
                       HPDF_UINT    len)
{
    if (len > HPDF_LIMIT_MAX_STRING_LEN)
        return FUNC4 (obj->error, HPDF_BINARY_LENGTH_ERR, 0);

    if (obj->value) {
        FUNC1 (obj->mmgr, obj->value);
        obj->len = 0;
    }

    obj->value = FUNC2 (obj->mmgr, len);
    if (!obj->value)
        return FUNC0 (obj->error);

    FUNC3 (obj->value, value, len);
    obj->len = len;

    return HPDF_OK;
}