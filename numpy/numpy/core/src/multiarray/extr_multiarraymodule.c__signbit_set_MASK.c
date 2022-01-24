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
struct TYPE_2__ {int elsize; char byteorder; } ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 char NPY_LITTLE ; 
 char NPY_NATIVE ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char) ; 

__attribute__((used)) static int
FUNC3(PyArrayObject *arr)
{
    static char bitmask = (char) 0x80;
    char *ptr;  /* points to the npy_byte to test */
    char byteorder;
    int elsize;

    elsize = FUNC1(arr)->elsize;
    byteorder = FUNC1(arr)->byteorder;
    ptr = FUNC0(arr);
    if (elsize > 1 &&
        (byteorder == NPY_LITTLE ||
         (byteorder == NPY_NATIVE &&
          FUNC2(NPY_LITTLE)))) {
        ptr += elsize - 1;
    }
    return ((*ptr & bitmask) != 0);
}