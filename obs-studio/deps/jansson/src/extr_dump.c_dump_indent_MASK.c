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
typedef  int (* json_dump_callback_t ) (char*,int,void*) ;

/* Variables and functions */
 unsigned int FUNC0 (size_t) ; 
 size_t JSON_COMPACT ; 
 char* whitespace ; 

__attribute__((used)) static int FUNC1(size_t flags, int depth, int space, json_dump_callback_t dump, void *data)
{
    if(FUNC0(flags) > 0)
    {
        unsigned int ws_count = FUNC0(flags), n_spaces = depth * ws_count;

        if(dump("\n", 1, data))
            return -1;

        while(n_spaces > 0)
        {
            int cur_n = n_spaces < sizeof whitespace - 1 ? n_spaces : sizeof whitespace - 1;

            if(dump(whitespace, cur_n, data))
                return -1;

            n_spaces -= cur_n;
        }
    }
    else if(space && !(flags & JSON_COMPACT))
    {
        return dump(" ", 1, data);
    }
    return 0;
}