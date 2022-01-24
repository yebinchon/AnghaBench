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
struct tls_multi {int /*<<< orphan*/ * session; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  D_TLS_DEBUG ; 
 int /*<<< orphan*/  D_TLS_DEBUG_LOW ; 
 int TM_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tls_multi*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct tls_multi *multi, int dest, int src, bool reinit_src)
{
    FUNC2(D_TLS_DEBUG_LOW, "TLS: move_session: dest=%s src=%s reinit_src=%d",
        FUNC4(dest),
        FUNC4(src),
        reinit_src);
    FUNC0(src != dest);
    FUNC0(src >= 0 && src < TM_SIZE);
    FUNC0(dest >= 0 && dest < TM_SIZE);
    FUNC5(&multi->session[dest], false);
    multi->session[dest] = multi->session[src];

    if (reinit_src)
    {
        FUNC6(multi, &multi->session[src]);
    }
    else
    {
        FUNC3(&multi->session[src], sizeof(multi->session[src]));
    }

    FUNC1(D_TLS_DEBUG, "TLS: move_session: exit");
}