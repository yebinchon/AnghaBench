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
typedef  int /*<<< orphan*/  v ;
struct gc_arena {int dummy; } ;
typedef  int /*<<< orphan*/  k ;

/* Variables and functions */
 int FUNC0 (char const*,char*,char*,int,int,char const**) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 char* FUNC3 (char*,struct gc_arena*) ; 

__attribute__((used)) static char *
FUNC4(const char *key, const char *pa, struct gc_arena *gc)
{
    char k[64];
    char v[256];
    const char *content = pa;

    while (true)
    {
        const int status = FUNC0(content, k, v, sizeof(k), sizeof(v), &content);
        if (status)
        {
            if (!FUNC2(key, k))
            {
                return FUNC3(v, gc);
            }
        }
        else
        {
            return NULL;
        }

        /* advance to start of next key */
        if (*content == ',')
        {
            ++content;
        }
        while (*content && FUNC1(*content))
        {
            ++content;
        }
    }
}