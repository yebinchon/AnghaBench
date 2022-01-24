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
struct mpv_global {int dummy; } ;
struct mp_log {int dummy; } ;
struct m_obj_desc {int /*<<< orphan*/  priv_size; int /*<<< orphan*/  priv_defaults; int /*<<< orphan*/  options; } ;
struct m_config_group {int /*<<< orphan*/  group; } ;

/* Variables and functions */
 struct m_config_group* FUNC0 (struct mpv_global*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,struct mpv_global*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (void*,int /*<<< orphan*/ ) ; 

void *FUNC4(void *ta_parent, struct mp_log *log,
        struct mpv_global *global, struct m_obj_desc *desc, const char *name)
{
    const struct m_config_group *group = FUNC0(global, desc->options);
    if (group) {
        return FUNC2(ta_parent, global, group->group);
    } else {
        void *d = FUNC3(ta_parent, desc->priv_size);
        if (desc->priv_defaults)
            FUNC1(d, desc->priv_defaults, desc->priv_size);
        return d;
    }
}