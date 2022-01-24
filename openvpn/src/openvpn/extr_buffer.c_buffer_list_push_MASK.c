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
struct buffer_list {int dummy; } ;
struct TYPE_2__ {size_t len; } ;
struct buffer_entry {TYPE_1__ buf; } ;

/* Variables and functions */
 struct buffer_entry* FUNC0 (struct buffer_list*,char const*,size_t const) ; 
 size_t FUNC1 (char const*) ; 

void
FUNC2(struct buffer_list *ol, const char *str)
{
    if (str)
    {
        const size_t len = FUNC1((const char *)str);
        struct buffer_entry *e = FUNC0(ol, str, len+1);
        if (e)
        {
            e->buf.len = len; /* Don't count trailing '\0' as part of length */
        }
    }
}