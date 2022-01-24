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
struct m_option {int /*<<< orphan*/ * type; int /*<<< orphan*/  member_0; } ;
struct MPContext {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*,char const*,char*,char*,int) ; 
 int /*<<< orphan*/  MSGL_V ; 
#define  M_PROPERTY_SET_NODE 129 
#define  M_PROPERTY_SET_STRING 128 
 scalar_t__ FUNC1 (int,void*) ; 
 char* FUNC2 (struct m_option*,void*) ; 
 int /*<<< orphan*/  m_option_type_node ; 
 int /*<<< orphan*/  m_option_type_string ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int,void*,struct MPContext*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(const char *name, int action, void *val,
                   struct MPContext *ctx)
{
    int r = FUNC4(name, action, val, ctx);
    if (FUNC3(ctx->log, MSGL_V) && FUNC1(action, val)) {
        struct m_option ot = {0};
        void *data = val;
        switch (action) {
        case M_PROPERTY_SET_NODE:
            ot.type = &m_option_type_node;
            break;
        case M_PROPERTY_SET_STRING:
            ot.type = &m_option_type_string;
            data = &val;
            break;
        }
        char *t = ot.type ? FUNC2(&ot, data) : NULL;
        FUNC0(ctx, "Set property: %s%s%s -> %d\n",
                   name, t ? "=" : "", t ? t : "", r);
        FUNC5(t);
    }
    return r;
}