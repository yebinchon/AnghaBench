#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int type_num; } ;
typedef  TYPE_1__ PyArray_Descr ;

/* Variables and functions */
 int NPY_NTYPES ; 
 TYPE_1__* FUNC0 (int) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int** _npy_type_promotion_table ; 
 int FUNC4 (int) ; 

__attribute__((used)) static PyArray_Descr *
FUNC5(PyArray_Descr *type1, PyArray_Descr *type2,
                        int is_small_unsigned1, int is_small_unsigned2)
{
    if (is_small_unsigned1) {
        int type_num1 = type1->type_num;
        int type_num2 = type2->type_num;
        int ret_type_num;

        if (type_num2 < NPY_NTYPES && !(FUNC2(type_num2) ||
                                        FUNC3(type_num2))) {
            /* Convert to the equivalent-sized signed integer */
            type_num1 = FUNC4(type_num1);

            ret_type_num = _npy_type_promotion_table[type_num1][type_num2];
            /* The table doesn't handle string/unicode/void, check the result */
            if (ret_type_num >= 0) {
                return FUNC0(ret_type_num);
            }
        }

        return FUNC1(type1, type2);
    }
    else if (is_small_unsigned2) {
        int type_num1 = type1->type_num;
        int type_num2 = type2->type_num;
        int ret_type_num;

        if (type_num1 < NPY_NTYPES && !(FUNC2(type_num1) ||
                                        FUNC3(type_num1))) {
            /* Convert to the equivalent-sized signed integer */
            type_num2 = FUNC4(type_num2);

            ret_type_num = _npy_type_promotion_table[type_num1][type_num2];
            /* The table doesn't handle string/unicode/void, check the result */
            if (ret_type_num >= 0) {
                return FUNC0(ret_type_num);
            }
        }

        return FUNC1(type1, type2);
    }
    else {
        return FUNC1(type1, type2);
    }

}