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
struct TYPE_2__ {char* string; } ;
struct mpv_node {scalar_t__ format; TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  m_option_t ;

/* Variables and functions */
 scalar_t__ MPV_FORMAT_STRING ; 
 int M_OPT_INVALID ; 
 int M_OPT_UNKNOWN ; 
 int FUNC0 (int /*<<< orphan*/  const*,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,void*,char**) ; 

__attribute__((used)) static int FUNC2(const m_option_t *opt, void *dst, struct mpv_node *src)
{
    if (src->format != MPV_FORMAT_STRING)
        return M_OPT_UNKNOWN;
    char *s = src->u.string;
    int r = s ? FUNC0(opt, &s) : M_OPT_INVALID;
    if (r >= 0)
        FUNC1(opt, dst, &s);
    return r;
}