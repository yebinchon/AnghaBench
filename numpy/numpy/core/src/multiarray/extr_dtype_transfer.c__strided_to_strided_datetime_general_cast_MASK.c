#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ npy_intp ;
typedef  char npy_int64 ;
typedef  int /*<<< orphan*/  npy_datetimestruct ;
typedef  int /*<<< orphan*/  dt ;
struct TYPE_2__ {int /*<<< orphan*/  dst_meta; int /*<<< orphan*/  src_meta; } ;
typedef  TYPE_1__ _strided_datetime_cast_data ;
typedef  int /*<<< orphan*/  NpyAuxData ;

/* Variables and functions */
 char NPY_DATETIME_NAT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC3(char *dst, npy_intp dst_stride,
                        char *src, npy_intp src_stride,
                        npy_intp N, npy_intp src_itemsize,
                        NpyAuxData *data)
{
    _strided_datetime_cast_data *d = (_strided_datetime_cast_data *)data;
    npy_int64 dt;
    npy_datetimestruct dts;

    while (N > 0) {
        FUNC2(&dt, src, sizeof(dt));

        if (FUNC0(&d->src_meta,
                                               dt, &dts) < 0) {
            dt = NPY_DATETIME_NAT;
        }
        else {
            if (FUNC1(&d->dst_meta,
                                                   &dts, &dt) < 0) {
                dt = NPY_DATETIME_NAT;
            }
        }

        FUNC2(dst, &dt, sizeof(dt));

        dst += dst_stride;
        src += src_stride;
        --N;
    }
}