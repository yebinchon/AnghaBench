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
typedef  int /*<<< orphan*/  mp_obj_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MP_QSTR_ ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mp_sys_argv ; 
 int /*<<< orphan*/  mp_sys_path ; 
 char* stack_top ; 

void FUNC8(int heap_size) {
    int stack_dummy;
    stack_top = (char*)&stack_dummy;

    #if MICROPY_ENABLE_GC
    char *heap = (char*)malloc(heap_size * sizeof(char));
    gc_init(heap, heap + heap_size);
    #endif

    #if MICROPY_ENABLE_PYSTACK
    static mp_obj_t pystack[1024];
    mp_pystack_init(pystack, &pystack[MP_ARRAY_SIZE(pystack)]);
    #endif

    FUNC4();
    
    FUNC6(mp_sys_path, 0);
    FUNC5(mp_sys_path, FUNC1(MP_QSTR_));
    FUNC6(mp_sys_argv, 0);
}