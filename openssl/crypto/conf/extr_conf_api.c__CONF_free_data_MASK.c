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
struct TYPE_3__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ CONF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  value_free_hash ; 
 int /*<<< orphan*/  value_free_stack_doall ; 

void FUNC4(CONF *conf)
{
    if (conf == NULL || conf->data == NULL)
        return;

    /* evil thing to make sure the 'OPENSSL_free()' works as expected */
    FUNC3(conf->data, 0);
    FUNC1(conf->data, value_free_hash, conf->data);

    /*
     * We now have only 'section' entries in the hash table. Due to problems
     * with
     */

    FUNC0(conf->data, value_free_stack_doall);
    FUNC2(conf->data);
}