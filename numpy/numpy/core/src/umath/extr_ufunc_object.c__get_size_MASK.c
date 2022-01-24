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
typedef  scalar_t__ npy_longlong ;
typedef  int npy_intp ;

/* Variables and functions */
 scalar_t__ NPY_MAX_INTP ; 
 scalar_t__ NPY_MIN_INTP ; 
 scalar_t__ FUNC0 (char const*,char**,int) ; 
 scalar_t__ FUNC1 (char) ; 

__attribute__((used)) static npy_intp
FUNC2(const char* str)
{
    char *stop;
    npy_longlong size = FUNC0(str, &stop, 10);

    if (stop == str || FUNC1(*stop)) {
        /* not a well formed number */
        return -1;
    }
    if (size >= NPY_MAX_INTP || size <= NPY_MIN_INTP) {
        /* len(str) too long */
        return -1;
    }
    return size;
}