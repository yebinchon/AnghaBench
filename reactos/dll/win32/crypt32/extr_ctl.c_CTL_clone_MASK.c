#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * hCertStore; } ;
struct TYPE_4__ {int /*<<< orphan*/  base; TYPE_1__ ctx; } ;
typedef  TYPE_2__ ctl_t ;
typedef  int /*<<< orphan*/  context_t ;
typedef  int /*<<< orphan*/  WINECRYPT_CERTSTORE ;
typedef  int /*<<< orphan*/  CTL_CONTEXT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static context_t *FUNC2(context_t *context, WINECRYPT_CERTSTORE *store, BOOL use_link)
{
    ctl_t *ctl;

    if(!use_link) {
        FUNC1("Only links supported\n");
        return NULL;
    }

    ctl = (ctl_t*)FUNC0(sizeof(CTL_CONTEXT), context, store);
    if(!ctl)
        return NULL;

    ctl->ctx.hCertStore = store;
    return &ctl->base;
}