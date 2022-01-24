#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ unique; int /*<<< orphan*/ * dict; } ;
struct TYPE_7__ {int reset; int /*<<< orphan*/  count; int /*<<< orphan*/  events; TYPE_1__ set; } ;
typedef  TYPE_2__ STATSD_METRIC ;

/* Variables and functions */
 int DICTIONARY_FLAG_VALUE_LINK_DONT_CLONE ; 
 int STATSD_DICTIONARY_OPTIONS ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (char const*) ; 

__attribute__((used)) static inline void FUNC10(STATSD_METRIC *m, const char *value) {
    if(!FUNC5(m)) return;

    if(FUNC8(!value || !*value)) {
        FUNC4("STATSD: metric of type set, with empty value is ignored.");
        return;
    }

    if(FUNC8(m->reset)) {
        if(FUNC6(m->set.dict)) {
            FUNC1(m->set.dict);
            m->set.dict = NULL;
        }
        FUNC7(m);
    }

    if (FUNC8(!m->set.dict)) {
        m->set.dict   = FUNC0(STATSD_DICTIONARY_OPTIONS | DICTIONARY_FLAG_VALUE_LINK_DONT_CLONE);
        m->set.unique = 0;
    }

    if(FUNC8(FUNC9(value))) {
        // magic loading of metric, without affecting anything
    }
    else {
        void *t = FUNC2(m->set.dict, value);
        if (FUNC8(!t)) {
            FUNC3(m->set.dict, value, NULL, 1);
            m->set.unique++;
        }

        m->events++;
        m->count++;
    }
}