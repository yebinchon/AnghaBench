#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct m_property {int dummy; } ;
struct TYPE_13__ {int len; char* start; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,char) ; 
 int /*<<< orphan*/  FUNC1 (char**,int*,TYPE_1__) ; 
 TYPE_1__ FUNC2 (char const*) ; 
 TYPE_1__ FUNC3 (TYPE_1__,int) ; 
 int FUNC4 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC5 (TYPE_1__,char*) ; 
 TYPE_1__ FUNC6 (TYPE_1__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (TYPE_1__,char*) ; 
 int FUNC8 (TYPE_1__,char*) ; 
 int FUNC9 (struct m_property const*,char**,int*,TYPE_1__,int,void*) ; 

char *FUNC10(const struct m_property *prop_list,
                                 const char *str0, void *ctx)
{
    char *ret = NULL;
    int ret_len = 0;
    bool skip = false;
    int level = 0, skip_level = 0;
    bstr str = FUNC2(str0);

    while (str.len) {
        if (level > 0 && FUNC4(&str, "}")) {
            if (skip && level <= skip_level)
                skip = false;
            level--;
        } else if (FUNC7(str, "${") && FUNC5(str, "}") >= 0) {
            str = FUNC3(str, 2);
            level++;

            // Assume ":" and "}" can't be part of the property name
            // => if ":" comes before "}", it must be for the fallback
            int term_pos = FUNC8(str, ":}");
            bstr name = FUNC6(str, 0, term_pos < 0 ? str.len : term_pos);
            str = FUNC3(str, term_pos);
            bool have_fallback = FUNC4(&str, ":");

            if (!skip) {
                skip = FUNC9(prop_list, &ret, &ret_len, name,
                                       have_fallback, ctx);
                if (skip)
                    skip_level = level;
            }
        } else if (level == 0 && FUNC4(&str, "$>")) {
            FUNC1(&ret, &ret_len, str);
            break;
        } else {
            char c;

            // Other combinations, e.g. "$x", are added verbatim
            if (FUNC4(&str, "$$")) {
                c = '$';
            } else if (FUNC4(&str, "$}")) {
                c = '}';
            } else {
                c = str.start[0];
                str = FUNC3(str, 1);
            }

            if (!skip)
                FUNC0(NULL, ret, ret_len, c);
        }
    }

    FUNC0(NULL, ret, ret_len, '\0');
    return ret;
}