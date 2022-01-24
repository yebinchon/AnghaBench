#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ version; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ nfs41_rpc_clnt ;
typedef  int bool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC2(nfs41_rpc_clnt *rpc, uint32_t version)
{
    bool_t status = 0;
    FUNC0(&rpc->lock);
    if (rpc->version > version)
        status = 1;
    FUNC1(&rpc->lock);
    return status;
}