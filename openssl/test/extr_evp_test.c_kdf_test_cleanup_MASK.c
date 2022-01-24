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
struct TYPE_7__ {TYPE_2__* data; } ;
struct TYPE_6__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  output; TYPE_1__* params; } ;
struct TYPE_5__ {int /*<<< orphan*/  data; int /*<<< orphan*/ * key; } ;
typedef  TYPE_1__ OSSL_PARAM ;
typedef  TYPE_2__ KDF_DATA ;
typedef  TYPE_3__ EVP_TEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(EVP_TEST *t)
{
    KDF_DATA *kdata = t->data;
    OSSL_PARAM *p;

    for (p = kdata->params; p->key != NULL; p++)
        FUNC1(p->data);
    FUNC1(kdata->output);
    FUNC0(kdata->ctx);
}