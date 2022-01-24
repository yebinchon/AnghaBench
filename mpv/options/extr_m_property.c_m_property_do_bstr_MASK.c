#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct m_property {int dummy; } ;
typedef  int /*<<< orphan*/  name0 ;
struct TYPE_4__ {int len; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 char* FUNC0 (TYPE_1__) ; 
 int M_PROPERTY_UNKNOWN ; 
 int FUNC1 (int /*<<< orphan*/ *,struct m_property const*,char*,int,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC3(const struct m_property *prop_list, bstr name,
                              int action, void *arg, void *ctx)
{
    char name0[64];
    if (name.len >= sizeof(name0))
        return M_PROPERTY_UNKNOWN;
    FUNC2(name0, sizeof(name0), "%.*s", FUNC0(name));
    return FUNC1(NULL, prop_list, name0, action, arg, ctx);
}