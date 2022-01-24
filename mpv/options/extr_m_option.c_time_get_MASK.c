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
struct TYPE_2__ {int /*<<< orphan*/  string; } ;
struct mpv_node {TYPE_1__ u; int /*<<< orphan*/  format; } ;
typedef  int /*<<< orphan*/  m_option_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  MPV_FORMAT_STRING ; 
 double MP_NOPTS_VALUE ; 
 int FUNC1 (int /*<<< orphan*/  const*,void*,struct mpv_node*,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*) ; 

__attribute__((used)) static int FUNC3(const m_option_t *opt, void *ta_parent,
                      struct mpv_node *dst, void *src)
{
    if (FUNC0(opt) && *(double *)src == MP_NOPTS_VALUE) {
        dst->format = MPV_FORMAT_STRING;
        dst->u.string = FUNC2(ta_parent, "no");
        return 1;
    }
    return FUNC1(opt, ta_parent, dst, src);
}