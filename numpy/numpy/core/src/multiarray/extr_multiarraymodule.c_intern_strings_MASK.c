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

/* Variables and functions */
 void* FUNC0 (char*) ; 
 void* npy_ma_str_array ; 
 void* npy_ma_str_array_finalize ; 
 void* npy_ma_str_array_prepare ; 
 void* npy_ma_str_array_wrap ; 
 void* npy_ma_str_axis1 ; 
 void* npy_ma_str_axis2 ; 
 void* npy_ma_str_copy ; 
 void* npy_ma_str_dtype ; 
 void* npy_ma_str_implementation ; 
 void* npy_ma_str_ndmin ; 
 void* npy_ma_str_order ; 
 void* npy_ma_str_ufunc ; 

__attribute__((used)) static int
FUNC1(void)
{
    npy_ma_str_array = FUNC0("__array__");
    npy_ma_str_array_prepare = FUNC0("__array_prepare__");
    npy_ma_str_array_wrap = FUNC0("__array_wrap__");
    npy_ma_str_array_finalize = FUNC0("__array_finalize__");
    npy_ma_str_ufunc = FUNC0("__array_ufunc__");
    npy_ma_str_implementation = FUNC0("_implementation");
    npy_ma_str_order = FUNC0("order");
    npy_ma_str_copy = FUNC0("copy");
    npy_ma_str_dtype = FUNC0("dtype");
    npy_ma_str_ndmin = FUNC0("ndmin");
    npy_ma_str_axis1 = FUNC0("axis1");
    npy_ma_str_axis2 = FUNC0("axis2");

    return npy_ma_str_array && npy_ma_str_array_prepare &&
           npy_ma_str_array_wrap && npy_ma_str_array_finalize &&
           npy_ma_str_ufunc && npy_ma_str_implementation &&
           npy_ma_str_order && npy_ma_str_copy && npy_ma_str_dtype &&
           npy_ma_str_ndmin && npy_ma_str_axis1 && npy_ma_str_axis2;
}