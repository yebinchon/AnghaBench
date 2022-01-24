#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ ctl_t ;
struct TYPE_6__ {scalar_t__ linked; } ;
typedef  TYPE_2__ context_t ;
typedef  int /*<<< orphan*/  WINECRYPT_CERTSTORE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static BOOL FUNC2(WINECRYPT_CERTSTORE *store, context_t *context)
{
    ctl_t *ctl = (ctl_t*)context, *linked;

    FUNC1("(%p, %p)\n", store, ctl);

    linked = (ctl_t*)context->linked;
    return FUNC0(&linked->ctx);
}