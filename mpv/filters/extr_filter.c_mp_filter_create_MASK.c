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
struct mp_filter_params {struct mp_filter_info const* parent; struct mp_filter_info const* info; } ;
struct mp_filter_info {int dummy; } ;
typedef  struct mp_filter_info const mp_filter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_filter_info const*) ; 
 struct mp_filter_info const* FUNC1 (struct mp_filter_params*) ; 

struct mp_filter *FUNC2(struct mp_filter *parent,
                                   const struct mp_filter_info *info)
{
    FUNC0(parent);
    FUNC0(info);
    struct mp_filter_params params = {
        .info = info,
        .parent = parent,
    };
    return FUNC1(&params);
}