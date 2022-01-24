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
struct nn_respondent {TYPE_1__ xrespondent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nn_respondent*) ; 
 struct nn_respondent* FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_respondent*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  nn_respondent_sockbase_vfptr ; 

__attribute__((used)) static int FUNC3 (void *hint, struct nn_sockbase **sockbase)
{
    struct nn_respondent *self;

    self = FUNC1 (sizeof (struct nn_respondent), "socket (respondent)");
    FUNC0 (self);
    FUNC2 (self, &nn_respondent_sockbase_vfptr, hint);
    *sockbase = &self->xrespondent.sockbase;

    return 0;
}