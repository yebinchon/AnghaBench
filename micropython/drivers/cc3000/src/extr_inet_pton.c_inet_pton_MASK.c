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

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  EAFNOSUPPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,unsigned char*) ; 
 int FUNC2 (char const*,unsigned char*) ; 

int FUNC3(int af, const char *src, void *dst)
{
  switch (af) {
  case AF_INET:
    return (FUNC1(src, (unsigned char *)dst));
#ifdef ENABLE_IPV6
  case AF_INET6:
    return (inet_pton6(src, (unsigned char *)dst));
#endif
  default:
    FUNC0(EAFNOSUPPORT);
    return (-1);
  }
  /* NOTREACHED */
}