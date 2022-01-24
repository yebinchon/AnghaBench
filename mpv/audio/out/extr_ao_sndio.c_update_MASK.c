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
struct priv {int /*<<< orphan*/  pfd; int /*<<< orphan*/  hdl; } ;
struct ao {struct priv* priv; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  POLLOUT ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ao *ao)
{
    struct priv *p = ao->priv;
    int n = FUNC1(p->hdl, p->pfd, POLLOUT);
    while (FUNC0(p->pfd, n, 0) < 0 && errno == EINTR) {}
    FUNC2(p->hdl, p->pfd);
}