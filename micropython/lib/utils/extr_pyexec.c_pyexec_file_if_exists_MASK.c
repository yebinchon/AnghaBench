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
 scalar_t__ MP_IMPORT_STAT_FILE ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 

int FUNC4(const char *filename) {
    #if MICROPY_MODULE_FROZEN
    if (mp_frozen_stat(filename) == MP_IMPORT_STAT_FILE) {
        return pyexec_frozen_module(filename);
    }
    #endif
    if (FUNC1(filename) != MP_IMPORT_STAT_FILE) {
        return 1; // success (no file is the same as an empty file executing without fail)
    }
    return FUNC2(filename);
}