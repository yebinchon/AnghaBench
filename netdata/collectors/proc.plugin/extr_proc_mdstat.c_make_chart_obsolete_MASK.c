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
typedef  int /*<<< orphan*/  RRDSET ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char const*) ; 

__attribute__((used)) static inline void FUNC4(char *name, const char *id_modifier) {
    char id[50 + 1];
    RRDSET *st = NULL;

    if(FUNC0(name && id_modifier)) {
        FUNC3(id, 50, "mdstat.%s_%s", name, id_modifier);
        st = FUNC1(id);
        if(FUNC0(*st)) FUNC2(st);
    }
}