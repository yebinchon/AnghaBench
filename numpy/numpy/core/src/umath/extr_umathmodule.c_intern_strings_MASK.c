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
 char* UFUNC_PYVALS_NAME ; 
 void* npy_um_str_array_finalize ; 
 void* npy_um_str_array_prepare ; 
 void* npy_um_str_array_wrap ; 
 void* npy_um_str_axes ; 
 void* npy_um_str_axis ; 
 void* npy_um_str_casting ; 
 void* npy_um_str_dtype ; 
 void* npy_um_str_extobj ; 
 void* npy_um_str_keepdims ; 
 void* npy_um_str_order ; 
 void* npy_um_str_out ; 
 void* npy_um_str_pyvals_name ; 
 void* npy_um_str_sig ; 
 void* npy_um_str_signature ; 
 void* npy_um_str_subok ; 
 void* npy_um_str_ufunc ; 
 void* npy_um_str_where ; 

__attribute__((used)) static int
FUNC1(void)
{
    npy_um_str_out = FUNC0("out");
    npy_um_str_where = FUNC0("where");
    npy_um_str_axes = FUNC0("axes");
    npy_um_str_axis = FUNC0("axis");
    npy_um_str_keepdims = FUNC0("keepdims");
    npy_um_str_casting = FUNC0("casting");
    npy_um_str_order = FUNC0("order");
    npy_um_str_dtype = FUNC0("dtype");
    npy_um_str_subok = FUNC0("subok");
    npy_um_str_signature = FUNC0("signature");
    npy_um_str_sig = FUNC0("sig");
    npy_um_str_extobj = FUNC0("extobj");
    npy_um_str_array_prepare = FUNC0("__array_prepare__");
    npy_um_str_array_wrap = FUNC0("__array_wrap__");
    npy_um_str_array_finalize = FUNC0("__array_finalize__");
    npy_um_str_ufunc = FUNC0("__array_ufunc__");
    npy_um_str_pyvals_name = FUNC0(UFUNC_PYVALS_NAME);

    return npy_um_str_out && npy_um_str_subok && npy_um_str_array_prepare &&
        npy_um_str_array_wrap && npy_um_str_array_finalize && npy_um_str_ufunc;
}