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
struct openvpn_sockaddr {int dummy; } ;
struct addrinfo {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct openvpn_sockaddr const*,struct addrinfo*) ; 
 int FUNC1 (struct openvpn_sockaddr const*,struct addrinfo*) ; 
 scalar_t__ FUNC2 (int const) ; 

__attribute__((used)) static inline bool
FUNC3(const struct openvpn_sockaddr *a1,
                     struct addrinfo *addr_list,
                     const int proto)
{
    return FUNC2(proto)
           ? FUNC0(a1, addr_list)
           : FUNC1(a1, addr_list);
}