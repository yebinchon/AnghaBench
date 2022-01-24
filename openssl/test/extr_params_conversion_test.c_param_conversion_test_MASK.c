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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ int64_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_3__ {scalar_t__ i32; scalar_t__ i64; scalar_t__ u32; scalar_t__ u64; double d; int /*<<< orphan*/  size; int /*<<< orphan*/  ref; int /*<<< orphan*/  datum; int /*<<< orphan*/  param; int /*<<< orphan*/  valid_d; int /*<<< orphan*/  valid_u64; int /*<<< orphan*/  valid_u32; int /*<<< orphan*/  valid_i64; int /*<<< orphan*/  valid_i32; } ;
typedef  TYPE_1__ PARAM_CONVERSION ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,double*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,double) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(const PARAM_CONVERSION *pc, int line)
{
    int32_t i32;
    int64_t i64;
    uint32_t u32;
    uint64_t u64;
    double d;

    if (!pc->valid_i32) {
        if (!FUNC10(FUNC1(pc->param, &i32))) {
            FUNC12("unexpected valid conversion to int32 on line %d", line);
            return 0;
        }
    } else {
        if (!FUNC13(FUNC1(pc->param, &i32))
            || !FUNC13(i32 == pc->i32)) {
            FUNC12("unexpected conversion to int32 on line %d", line);
            return 0;
        }
        FUNC14(pc->datum, 44, pc->size);
        if (!FUNC13(FUNC6(pc->param, i32))
            || !FUNC11(pc->datum, pc->size, pc->ref, pc->size)) {
            FUNC12("unexpected valid conversion from int32 on line %d",
                      line);
            return 0;
        }
    }

    if (!pc->valid_i64) {
        if (!FUNC10(FUNC2(pc->param, &i64))) {
            FUNC12("unexpected valid conversion to int64 on line %d", line);
            return 0;
        }
    } else {
        if (!FUNC13(FUNC2(pc->param, &i64))
            || !FUNC13(i64 == pc->i64)) {
            FUNC12("unexpected conversion to int64 on line %d", line);
            return 0;
        }
        FUNC14(pc->datum, 44, pc->size);
        if (!FUNC13(FUNC7(pc->param, i64))
            || !FUNC11(pc->datum, pc->size, pc->ref, pc->size)) {
            FUNC12("unexpected valid conversion from int64 on line %d",
                      line);
            return 0;
        }
    }

    if (!pc->valid_u32) {
        if (!FUNC10(FUNC3(pc->param, &u32))) {
            FUNC12("unexpected valid conversion to uint32 on line %d", line);
            return 0;
        }
    } else {
        if (!FUNC13(FUNC3(pc->param, &u32))
            || !FUNC13(u32 == pc->u32)) {
            FUNC12("unexpected conversion to uint32 on line %d", line);
            return 0;
        }
        FUNC14(pc->datum, 44, pc->size);
        if (!FUNC13(FUNC8(pc->param, u32))
            || !FUNC11(pc->datum, pc->size, pc->ref, pc->size)) {
            FUNC12("unexpected valid conversion from uint32 on line %d",
                      line);
            return 0;
        }
    }

    if (!pc->valid_u64) {
        if (!FUNC10(FUNC4(pc->param, &u64))) {
            FUNC12("unexpected valid conversion to uint64 on line %d", line);
            return 0;
        }
    } else {
        if (!FUNC13(FUNC4(pc->param, &u64))
            || !FUNC13(u64 == pc->u64)) {
            FUNC12("unexpected conversion to uint64 on line %d", line);
            return 0;
        }
        FUNC14(pc->datum, 44, pc->size);
        if (!FUNC13(FUNC9(pc->param, u64))
            || !FUNC11(pc->datum, pc->size, pc->ref, pc->size)) {
            FUNC12("unexpected valid conversion from uint64 on line %d",
                      line);
            return 0;
        }
    }

    if (!pc->valid_d) {
        if (!FUNC10(FUNC0(pc->param, &d))) {
            FUNC12("unexpected valid conversion to double on line %d", line);
            return 0;
        }
    } else {
        if (!FUNC13(FUNC0(pc->param, &d))
            || !FUNC13(d == pc->d)) {
            FUNC12("unexpected conversion to double on line %d", line);
            return 0;
        }
        FUNC14(pc->datum, 44, pc->size);
        if (!FUNC13(FUNC5(pc->param, d))
            || !FUNC11(pc->datum, pc->size, pc->ref, pc->size)) {
            FUNC12("unexpected valid conversion from double on line %d",
                      line);
            return 0;
        }
    }

    return 1;
}