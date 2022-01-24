#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jsstr_t ;
struct TYPE_4__ {unsigned int depth; int /*<<< orphan*/  str; int /*<<< orphan*/ * right; int /*<<< orphan*/ * left; } ;
typedef  TYPE_1__ jsstr_rope_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {unsigned int depth; } ;

/* Variables and functions */
 unsigned int JSSTR_MAX_LENGTH ; 
 int /*<<< orphan*/  JSSTR_MAX_ROPE_DEPTH ; 
 int /*<<< orphan*/  JSSTR_ROPE ; 
 unsigned int JSSTR_SHORT_STRING_LENGTH ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int,int /*<<< orphan*/ **) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *) ; 

jsstr_t *FUNC8(jsstr_t *str1, jsstr_t *str2)
{
    unsigned len1, len2;
    jsstr_t *ret;
    WCHAR *ptr;

    len1 = FUNC7(str1);
    if(!len1)
        return FUNC1(str2);

    len2 = FUNC7(str2);
    if(!len2)
        return FUNC1(str1);

    if(len1 + len2 >= JSSTR_SHORT_STRING_LENGTH) {
        unsigned depth, depth2;
        jsstr_rope_t *rope;

        depth = FUNC6(str1) ? FUNC3(str1)->depth : 0;
        depth2 = FUNC6(str2) ? FUNC3(str2)->depth : 0;
        if(depth2 > depth)
            depth = depth2;

        if(depth++ < JSSTR_MAX_ROPE_DEPTH) {
            if(len1+len2 > JSSTR_MAX_LENGTH)
                return NULL;

            rope = FUNC0(sizeof(*rope));
            if(!rope)
                return NULL;

            FUNC5(&rope->str, len1+len2, JSSTR_ROPE);
            rope->left = FUNC1(str1);
            rope->right = FUNC1(str2);
            rope->depth = depth;
            return &rope->str;
        }
    }

    ret = FUNC2(len1+len2, &ptr);
    if(!ret)
        return NULL;

    FUNC4(str1, ptr);
    FUNC4(str2, ptr+len1);
    return ret;

}