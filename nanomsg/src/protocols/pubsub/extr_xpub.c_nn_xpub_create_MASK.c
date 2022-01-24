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
struct nn_sockbase {int dummy; } ;
struct nn_xpub {struct nn_sockbase sockbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nn_xpub*) ; 
 struct nn_xpub* FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_xpub*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  nn_xpub_sockbase_vfptr ; 

int FUNC3 (void *hint, struct nn_sockbase **sockbase)
{
    struct nn_xpub *self;

    self = FUNC1 (sizeof (struct nn_xpub), "socket (xpub)");
    FUNC0 (self);
    FUNC2 (self, &nn_xpub_sockbase_vfptr, hint);
    *sockbase = &self->sockbase;

    return 0;
}