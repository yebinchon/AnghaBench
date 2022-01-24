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
struct nn_xsub {int /*<<< orphan*/  trie; int /*<<< orphan*/  fq; int /*<<< orphan*/  sockbase; } ;
struct nn_sockbase_vfptr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nn_sockbase_vfptr const*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3 (struct nn_xsub *self,
    const struct nn_sockbase_vfptr *vfptr, void *hint)
{
    FUNC1 (&self->sockbase, vfptr, hint);
    FUNC0 (&self->fq);
    FUNC2 (&self->trie);
}