#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct TYPE_9__* name; int /*<<< orphan*/ * disp; struct TYPE_9__* next; } ;
typedef  TYPE_2__ named_item_t ;
struct TYPE_10__ {int /*<<< orphan*/ * site; scalar_t__ thread_id; TYPE_1__* ctx; } ;
struct TYPE_8__ {int state; int /*<<< orphan*/ * global; int /*<<< orphan*/ * site; int /*<<< orphan*/ * secmgr; TYPE_2__* named_items; int /*<<< orphan*/ * host_global; } ;
typedef  int SCRIPTSTATE ;
typedef  TYPE_3__ JScript ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
#define  SCRIPTSTATE_CONNECTED 132 
#define  SCRIPTSTATE_DISCONNECTED 131 
#define  SCRIPTSTATE_INITIALIZED 130 
#define  SCRIPTSTATE_STARTED 129 
#define  SCRIPTSTATE_UNINITIALIZED 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(JScript *This, SCRIPTSTATE state)
{
    if(This->ctx) {
        switch(This->ctx->state) {
        case SCRIPTSTATE_CONNECTED:
            FUNC6(This, SCRIPTSTATE_DISCONNECTED);
            if(state == SCRIPTSTATE_DISCONNECTED)
                return;
            /* FALLTHROUGH */
        case SCRIPTSTATE_STARTED:
        case SCRIPTSTATE_DISCONNECTED:
            FUNC7(This);

            if(This->ctx->state == SCRIPTSTATE_DISCONNECTED)
                FUNC6(This, SCRIPTSTATE_INITIALIZED);
            if(state == SCRIPTSTATE_INITIALIZED)
                return;
            /* FALLTHROUGH */
        case SCRIPTSTATE_INITIALIZED:
            if(This->ctx->host_global) {
                FUNC3(This->ctx->host_global);
                This->ctx->host_global = NULL;
            }

            if(This->ctx->named_items) {
                named_item_t *iter, *iter2;

                iter = This->ctx->named_items;
                while(iter) {
                    iter2 = iter->next;

                    if(iter->disp)
                        FUNC3(iter->disp);
                    FUNC8(iter->name);
                    FUNC8(iter);
                    iter = iter2;
                }

                This->ctx->named_items = NULL;
            }

            if(This->ctx->secmgr) {
                FUNC4(This->ctx->secmgr);
                This->ctx->secmgr = NULL;
            }

            if(This->ctx->site) {
                FUNC2(This->ctx->site);
                This->ctx->site = NULL;
            }

            if(This->ctx->global) {
                FUNC9(This->ctx->global);
                This->ctx->global = NULL;
            }
            /* FALLTHROUGH */
        case SCRIPTSTATE_UNINITIALIZED:
            FUNC6(This, state);
            break;
        default:
            FUNC5(0);
        }

        FUNC6(This, state);
    }else if(state == SCRIPTSTATE_UNINITIALIZED) {
        if(This->site)
            FUNC1(This->site, state);
    }else {
        FUNC0("NULL ctx\n");
    }

    if(state == SCRIPTSTATE_UNINITIALIZED)
        This->thread_id = 0;

    if(This->site) {
        FUNC2(This->site);
        This->site = NULL;
    }
}