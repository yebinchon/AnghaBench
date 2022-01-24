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
struct mp_user_filter {int /*<<< orphan*/  args; } ;
struct mp_filter {struct mp_user_filter* priv; } ;
struct m_option {int /*<<< orphan*/ * type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct m_option*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  m_option_type_obj_settings_list ; 
 int /*<<< orphan*/  FUNC1 (struct mp_filter*) ; 

__attribute__((used)) static void FUNC2(struct mp_filter *f)
{
    struct mp_user_filter *u = f->priv;

    struct m_option dummy = {.type = &m_option_type_obj_settings_list};
    FUNC0(&dummy, &u->args);

    FUNC1(f);
}