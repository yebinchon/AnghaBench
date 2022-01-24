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
struct nn_req {TYPE_1__ xreq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nn_req*) ; 
 struct nn_req* FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_req*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  nn_req_sockbase_vfptr ; 

__attribute__((used)) static int FUNC3 (void *hint, struct nn_sockbase **sockbase)
{
    struct nn_req *self;

    self = FUNC1 (sizeof (struct nn_req), "socket (req)");
    FUNC0 (self);
    FUNC2 (self, &nn_req_sockbase_vfptr, hint);
    *sockbase = &self->xreq.sockbase;

    return 0;
}