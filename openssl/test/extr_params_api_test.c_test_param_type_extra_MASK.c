#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  s ;
typedef  size_t int64_t ;
typedef  size_t int32_t ;
typedef  int /*<<< orphan*/  i64 ;
typedef  int /*<<< orphan*/  i32 ;
struct TYPE_10__ {int data_size; scalar_t__ data_type; } ;
typedef  TYPE_1__ OSSL_PARAM ;

/* Variables and functions */
 int MAX_LEN ; 
 scalar_t__ OSSL_PARAM_INTEGER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,size_t,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (size_t,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,size_t*,int) ; 

__attribute__((used)) static int FUNC11(OSSL_PARAM *param, const unsigned char *cmp,
                                 size_t width)
{
    int32_t i32;
    int64_t i64;
    size_t s, sz;
    unsigned char buf[MAX_LEN];
    const int bit32 = param->data_size == sizeof(int32_t);
    const int sizet = bit32 && sizeof(size_t) > sizeof(int32_t);
    const int signd = param->data_type == OSSL_PARAM_INTEGER;

    if (signd) {
        if ((bit32 && !FUNC9(FUNC0(param, &i32)))
            || !FUNC9(FUNC1(param, &i64)))
            return 0;
    } else {
        if ((bit32
             && !FUNC9(FUNC3(param, (uint32_t *)&i32)))
            || !FUNC9(FUNC4(param, (uint64_t *)&i64))
            || (sizet && !FUNC9(FUNC2(param, &s))))
            return 0;
    }

    /* Check signed types */
    if (bit32) {
        FUNC10(buf, &i32, sizeof(i32));
        sz = sizeof(i32) < width ? sizeof(i32) : width;
        if (!FUNC7(buf, sz, cmp, sz))
            return 0;
    }
    FUNC10(buf, &i64, sizeof(i64));
        sz = sizeof(i64) < width ? sizeof(i64) : width;
    if (!FUNC7(buf, sz, cmp, sz))
        return 0;
    if (sizet && !signd) {
        FUNC10(buf, &s, sizeof(s));
        sz = sizeof(s) < width ? sizeof(s) : width;
        if (!FUNC7(buf, sz, cmp, sz))
            return 0;
    }

    /* Check a widening write if possible */
    if (sizeof(size_t) > width) {
        if (signd) {
            if (!FUNC9(FUNC5(param, 12345))
                || !FUNC9(FUNC1(param, &i64))
                || !FUNC8((size_t)i64, 12345))
                return 0;
        } else {
            if (!FUNC9(FUNC6(param, 12345))
                || !FUNC9(FUNC4(param, (uint64_t *)&i64))
                || !FUNC8((size_t)i64, 12345))
                return 0;
        }
    }
    return 1;
}