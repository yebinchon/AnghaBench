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
union m_option_value {TYPE_1__* type; int /*<<< orphan*/  member_0; } ;
struct mp_log {int dummy; } ;
struct m_property {int dummy; } ;
struct m_option {TYPE_1__* type; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* multiply ) (union m_option_value*,union m_option_value*,double) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  M_PROPERTY_GET ; 
 int /*<<< orphan*/  M_PROPERTY_GET_CONSTRICTED_TYPE ; 
 int M_PROPERTY_NOT_IMPLEMENTED ; 
 int M_PROPERTY_OK ; 
 int /*<<< orphan*/  M_PROPERTY_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (union m_option_value*,union m_option_value*) ; 
 int FUNC2 (struct mp_log*,struct m_property const*,char const*,int /*<<< orphan*/ ,union m_option_value*,void*) ; 
 int /*<<< orphan*/  FUNC3 (union m_option_value*,union m_option_value*,double) ; 

__attribute__((used)) static int FUNC4(struct mp_log *log,
                               const struct m_property *prop_list,
                               const char *property, double f, void *ctx)
{
    union m_option_value val = {0};
    struct m_option opt = {0};
    int r;

    r = FUNC2(log, prop_list, property, M_PROPERTY_GET_CONSTRICTED_TYPE,
                      &opt, ctx);
    if (r != M_PROPERTY_OK)
        return r;
    FUNC0(opt.type);

    if (!opt.type->multiply)
        return M_PROPERTY_NOT_IMPLEMENTED;

    r = FUNC2(log, prop_list, property, M_PROPERTY_GET, &val, ctx);
    if (r != M_PROPERTY_OK)
        return r;
    opt.type->multiply(&opt, &val, f);
    r = FUNC2(log, prop_list, property, M_PROPERTY_SET, &val, ctx);
    FUNC1(&opt, &val);
    return r;
}