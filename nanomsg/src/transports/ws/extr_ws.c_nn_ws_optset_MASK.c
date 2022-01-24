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
struct nn_optset {int /*<<< orphan*/ * vfptr; } ;
struct nn_ws_optset {struct nn_optset base; int /*<<< orphan*/  msg_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_WS_MSG_TYPE_BINARY ; 
 int /*<<< orphan*/  FUNC0 (struct nn_ws_optset*) ; 
 struct nn_ws_optset* FUNC1 (int,char*) ; 
 int /*<<< orphan*/  nn_ws_optset_vfptr ; 

__attribute__((used)) static struct nn_optset *FUNC2 ()
{
    struct nn_ws_optset *optset;

    optset = FUNC1 (sizeof (struct nn_ws_optset), "optset (ws)");
    FUNC0 (optset);
    optset->base.vfptr = &nn_ws_optset_vfptr;

    /*  Default values for WebSocket options. */
    optset->msg_type = NN_WS_MSG_TYPE_BINARY;

    return &optset->base;   
}