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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; } ;
struct sockaddr {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct sockaddr *sa) /* {{{ */
{
    if (sa->sa_family == AF_INET) {
        return FUNC0(((struct sockaddr_in*)sa)->sin_port);
    }

    return FUNC0(((struct sockaddr_in6*)sa)->sin6_port);
}