#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct m_property {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 int M_PROPERTY_GET_STRING ; 
 int M_PROPERTY_PRINT ; 
 int M_PROPERTY_UNAVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (char**,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC3 (TYPE_1__,char*) ; 
 scalar_t__ FUNC4 (TYPE_1__,char*,TYPE_1__*,TYPE_1__*) ; 
 int FUNC5 (struct m_property const*,TYPE_1__,int,char**,void*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(const struct m_property *prop_list, char **ret,
                           int *ret_len, bstr prop, bool silent_error, void *ctx)
{
    bool cond_yes = FUNC2(&prop, "?");
    bool cond_no = !cond_yes && FUNC2(&prop, "!");
    bool test = cond_yes || cond_no;
    bool raw = FUNC2(&prop, "=");
    bstr comp_with = {0};
    bool comp = test && FUNC4(prop, "==", &prop, &comp_with);
    if (test && !comp)
        raw = true;
    int method = raw ? M_PROPERTY_GET_STRING : M_PROPERTY_PRINT;

    char *s = NULL;
    int r = FUNC5(prop_list, prop, method, &s, ctx);
    bool skip;
    if (comp) {
        skip = ((s && FUNC3(comp_with, s)) != cond_yes);
    } else if (test) {
        skip = (!!s != cond_yes);
    } else {
        skip = !!s;
        char *append = s;
        if (!s && !silent_error && !raw)
            append = (r == M_PROPERTY_UNAVAILABLE) ? "(unavailable)" : "(error)";
        FUNC0(ret, ret_len, FUNC1(append));
    }
    FUNC6(s);
    return skip;
}