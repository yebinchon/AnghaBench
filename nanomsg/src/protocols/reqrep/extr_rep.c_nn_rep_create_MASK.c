#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nn_sockbase {int dummy; } ;
struct TYPE_2__ {struct nn_sockbase sockbase; } ;
struct nn_rep {TYPE_1__ xrep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nn_rep*) ; 
 struct nn_rep* FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_rep*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  nn_rep_sockbase_vfptr ; 

__attribute__((used)) static int FUNC3 (void *hint, struct nn_sockbase **sockbase)
{
    struct nn_rep *self;

    self = FUNC1 (sizeof (struct nn_rep), "socket (rep)");
    FUNC0 (self);
    FUNC2 (self, &nn_rep_sockbase_vfptr, hint);
    *sockbase = &self->xrep.sockbase;

    return 0;
}