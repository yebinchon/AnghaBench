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
struct link_socket_info {struct link_socket_addr* lsa; } ;
struct link_socket_actual {int dummy; } ;
struct link_socket_addr {struct link_socket_actual actual; } ;
struct buffer {scalar_t__ len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct link_socket_actual*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline void
FUNC2(struct buffer *buf,
                              const struct link_socket_info *info,
                              struct link_socket_actual **act)
{
    if (buf->len > 0)
    {
        struct link_socket_addr *lsa = info->lsa;
        if (FUNC0(&lsa->actual))
        {
            *act = &lsa->actual;
        }
        else
        {
            FUNC1();
            buf->len = 0;
            *act = NULL;
        }
    }
}