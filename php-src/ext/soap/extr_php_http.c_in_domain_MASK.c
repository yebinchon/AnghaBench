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
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const char *host, const char *domain)
{
  if (domain[0] == '.') {
    int l1 = FUNC1(host);
    int l2 = FUNC1(domain);
    if (l1 > l2) {
    	return FUNC0(host+l1-l2,domain) == 0;
    } else {
      return 0;
    }
  } else {
    return FUNC0(host,domain) == 0;
  }
}