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
struct in_src {int dummy; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*) ; 
 char* INLINE_FILE_TAG ; 
 struct buffer FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*) ; 
 char* FUNC4 (struct in_src*,int /*<<< orphan*/ ,struct gc_arena*) ; 
 char* FUNC5 (char*,struct gc_arena*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static bool
FUNC7(struct in_src *is, char *p[], struct gc_arena *gc)
{
    bool ret = false;
    if (p[0] && !p[1])
    {
        char *arg = p[0];
        if (arg[0] == '<' && arg[FUNC6(arg)-1] == '>')
        {
            struct buffer close_tag;
            arg[FUNC6(arg)-1] = '\0';
            p[0] = FUNC5(arg+1, gc);
            p[1] = FUNC5(INLINE_FILE_TAG, gc);
            close_tag = FUNC1(FUNC6(p[0]) + 4);
            FUNC2(&close_tag, "</%s>", p[0]);
            p[2] = FUNC4(is, FUNC0(&close_tag), gc);
            p[3] = NULL;
            FUNC3(&close_tag);
            ret = true;
        }
    }
    return ret;
}