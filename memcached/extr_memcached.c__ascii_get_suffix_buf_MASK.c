#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int suffixsize; char** suffixlist; TYPE_1__* thread; } ;
typedef  TYPE_2__ conn ;
struct TYPE_8__ {int /*<<< orphan*/  malloc_fails; } ;
struct TYPE_6__ {int /*<<< orphan*/  suffix_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 char** FUNC4 (char**,int) ; 
 TYPE_3__ stats ; 

__attribute__((used)) static inline char *FUNC5(conn *c, int i) {
    char *suffix;
    /* Goofy mid-flight realloc. */
    if (i >= c->suffixsize) {
    char **new_suffix_list = FUNC4(c->suffixlist,
                           sizeof(char *) * c->suffixsize * 2);
    if (new_suffix_list) {
        c->suffixsize *= 2;
        c->suffixlist  = new_suffix_list;
    } else {
        FUNC0();
        stats.malloc_fails++;
        FUNC1();
        return NULL;
    }
    }

    suffix = FUNC2(c->thread->suffix_cache);
    if (suffix == NULL) {
      FUNC0();
      stats.malloc_fails++;
      FUNC1();
      FUNC3(c, "SERVER_ERROR out of memory making CAS suffix");
      return NULL;
    }
    *(c->suffixlist + i) = suffix;
    return suffix;
}