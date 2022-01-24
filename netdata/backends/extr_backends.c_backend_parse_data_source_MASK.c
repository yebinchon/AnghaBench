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
typedef  int BACKEND_OPTIONS ;

/* Variables and functions */
 int BACKEND_OPTIONS_SOURCE_BITS ; 
 int BACKEND_SOURCE_DATA_AS_COLLECTED ; 
 int BACKEND_SOURCE_DATA_AVERAGE ; 
 int BACKEND_SOURCE_DATA_SUM ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

inline BACKEND_OPTIONS FUNC2(const char *source, BACKEND_OPTIONS backend_options) {
    if(!FUNC1(source, "raw") || !FUNC1(source, "as collected") || !FUNC1(source, "as-collected") || !FUNC1(source, "as_collected") || !FUNC1(source, "ascollected")) {
        backend_options |= BACKEND_SOURCE_DATA_AS_COLLECTED;
        backend_options &= ~(BACKEND_OPTIONS_SOURCE_BITS ^ BACKEND_SOURCE_DATA_AS_COLLECTED);
    }
    else if(!FUNC1(source, "average")) {
        backend_options |= BACKEND_SOURCE_DATA_AVERAGE;
        backend_options &= ~(BACKEND_OPTIONS_SOURCE_BITS ^ BACKEND_SOURCE_DATA_AVERAGE);
    }
    else if(!FUNC1(source, "sum") || !FUNC1(source, "volume")) {
        backend_options |= BACKEND_SOURCE_DATA_SUM;
        backend_options &= ~(BACKEND_OPTIONS_SOURCE_BITS ^ BACKEND_SOURCE_DATA_SUM);
    }
    else {
        FUNC0("BACKEND: invalid data source method '%s'.", source);
    }

    return backend_options;
}