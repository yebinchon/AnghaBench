#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* client; } ;
typedef  TYPE_2__ nfs41_session ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  opens; } ;
struct TYPE_7__ {TYPE_1__ state; } ;
typedef  TYPE_3__ nfs41_client ;
typedef  int /*<<< orphan*/  nfs41_abs_path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int TRUE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs41_abs_path_compare ; 

__attribute__((used)) static int FUNC3(nfs41_abs_path *dst_path, nfs41_session *dst_session)
{
    int status;
    nfs41_client *client = dst_session->client;

    FUNC0(&client->state.lock);
    if (FUNC2(&client->state.opens, dst_path, nfs41_abs_path_compare))
        status = TRUE;
    else
        status = FALSE;
    FUNC1(&client->state.lock);

    return status;
}