#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uid_t ;
struct arl_callback_ptr {TYPE_1__* p; int /*<<< orphan*/  line; int /*<<< orphan*/  ff; } ;
struct TYPE_2__ {scalar_t__ uid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(const char *name, uint32_t hash, const char *value, void *dst) {
    (void)name; (void)hash; (void)value;
    struct arl_callback_ptr *aptr = (struct arl_callback_ptr *)dst;
    if(FUNC4(FUNC2(aptr->ff, aptr->line) < 5)) return;

    //const char *real_uid = procfile_lineword(aptr->ff, aptr->line, 1);
    const char *effective_uid = FUNC1(aptr->ff, aptr->line, 2);
    //const char *saved_uid = procfile_lineword(aptr->ff, aptr->line, 3);
    //const char *filesystem_uid = procfile_lineword(aptr->ff, aptr->line, 4);

    if(FUNC0(effective_uid && *effective_uid))
        aptr->p->uid = (uid_t)FUNC3(effective_uid);
}