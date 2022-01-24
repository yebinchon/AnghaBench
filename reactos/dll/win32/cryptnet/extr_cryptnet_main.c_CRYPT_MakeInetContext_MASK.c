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
struct InetContext {int /*<<< orphan*/  error; int /*<<< orphan*/  timeout; int /*<<< orphan*/  event; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct InetContext* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct InetContext*) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 

__attribute__((used)) static struct InetContext *FUNC3(DWORD dwTimeout)
{
    struct InetContext *context = FUNC1(sizeof(struct InetContext));

    if (context)
    {
        context->event = FUNC0(NULL, FALSE, FALSE, NULL);
        if (!context->event)
        {
            FUNC2(context);
            context = NULL;
        }
        else
        {
            context->timeout = dwTimeout;
            context->error = ERROR_SUCCESS;
        }
    }
    return context;
}