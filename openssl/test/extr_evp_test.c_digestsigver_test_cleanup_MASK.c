#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* output; struct TYPE_6__* osin; int /*<<< orphan*/  input; int /*<<< orphan*/  ctx; } ;
struct TYPE_5__ {TYPE_2__* data; } ;
typedef  TYPE_1__ EVP_TEST ;
typedef  TYPE_2__ DIGESTSIGN_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  evp_test_buffer_free ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(EVP_TEST *t)
{
    DIGESTSIGN_DATA *mdata = t->data;

    FUNC0(mdata->ctx);
    FUNC2(mdata->input, evp_test_buffer_free);
    FUNC1(mdata->osin);
    FUNC1(mdata->output);
    FUNC1(mdata);
    t->data = NULL;
}