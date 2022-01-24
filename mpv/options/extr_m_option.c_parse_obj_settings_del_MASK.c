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
struct mp_log {int dummy; } ;
struct bstr {scalar_t__ len; } ;
typedef  struct bstr bstr ;

/* Variables and functions */
 long long FUNC0 (struct bstr) ; 
 int /*<<< orphan*/  NAMECH ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 struct bstr FUNC2 (struct bstr,int) ; 
 scalar_t__ FUNC3 (struct bstr*,char*) ; 
 struct bstr FUNC4 (struct bstr,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct bstr,char*) ; 
 int FUNC6 (struct bstr,int /*<<< orphan*/ ) ; 
 long long FUNC7 (struct bstr,struct bstr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_log*,char*,long long,long long) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct bstr) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct mp_log *log, struct bstr opt_name,
                                  struct bstr *param, void *dst, bool *mark_del)
{
    bstr s = *param;
    if (FUNC3(&s, "@")) {
        // '@name:' -> parse as normal filter entry
        // '@name,' or '@name<end>' -> parse here
        int idx = FUNC6(s, NAMECH);
        bstr label = FUNC4(s, 0, idx);
        s = FUNC2(s, idx);
        if (FUNC5(s, ":"))
            return 0;
        if (dst) {
            int label_index = FUNC9(FUNC1(dst), label);
            if (label_index >= 0) {
                mark_del[label_index] = true;
            } else {
                FUNC8(log, "Option %.*s: item label @%.*s not found.\n",
                        FUNC0(opt_name), FUNC0(label));
            }
        }
        *param = s;
        return 1;
    }

    bstr rest;
    long long id = FUNC7(s, &rest, 0);
    if (rest.len == s.len)
        return 0;

    if (dst) {
        int num = FUNC10(FUNC1(dst));
        if (id < 0)
            id = num + id;

        if (id >= 0 && id < num) {
            mark_del[id] = true;
        } else {
            FUNC8(log, "Option %.*s: Index %lld is out of range.\n",
                    FUNC0(opt_name), id);
        }
    }

    *param = rest;
    return 1;
}