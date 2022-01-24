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
struct TYPE_3__ {int value; } ;
typedef  TYPE_1__ npy_index_info ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(PyArrayObject *self, char **ptr,
                    npy_index_info *indices, int index_num) {
    int i;
    *ptr = FUNC0(self);
    for (i=0; i < index_num; i++) {
        if ((FUNC3(&(indices[i].value),
                               FUNC1(self)[i], i, NULL)) < 0) {
            return -1;
        }
        *ptr += FUNC2(self, i) * indices[i].value;
    }
    return 0;
}