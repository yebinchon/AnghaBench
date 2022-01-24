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
struct tuntap {int dummy; } ;
struct link_socket {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char const*,struct link_socket*,struct tuntap*) ; 
 int /*<<< orphan*/  x_cs_verbose_level ; 

__attribute__((used)) static inline void
FUNC2(int status, const char *description, struct link_socket *sock, struct tuntap *tt)
{
    if (status < 0 || FUNC0(x_cs_verbose_level))
    {
        FUNC1(status, description, sock, tt);
    }
}