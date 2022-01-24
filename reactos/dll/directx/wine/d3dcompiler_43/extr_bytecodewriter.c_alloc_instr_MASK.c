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
struct instruction {unsigned int num_srcs; void* src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct instruction*) ; 

struct instruction *FUNC3(unsigned int srcs) {
    struct instruction *ret = FUNC1(sizeof(*ret));
    if(!ret) {
        FUNC0("Failed to allocate memory for an instruction structure\n");
        return NULL;
    }

    if(srcs) {
        ret->src = FUNC1(srcs * sizeof(*ret->src));
        if(!ret->src) {
            FUNC0("Failed to allocate memory for instruction registers\n");
            FUNC2(ret);
            return NULL;
        }
        ret->num_srcs = srcs;
    }
    return ret;
}