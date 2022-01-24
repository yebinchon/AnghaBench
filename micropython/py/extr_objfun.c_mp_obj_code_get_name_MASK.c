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
typedef  int const qstr ;
typedef  int byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int const FUNC1 (int const*) ; 

qstr FUNC2(const byte *code_info) {
    FUNC0(code_info);
    #if MICROPY_PERSISTENT_CODE
    return code_info[0] | (code_info[1] << 8);
    #else
    return FUNC1(code_info);
    #endif
}