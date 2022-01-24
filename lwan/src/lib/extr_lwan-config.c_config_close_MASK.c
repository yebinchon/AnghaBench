#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  strbuf; } ;
struct TYPE_3__ {int /*<<< orphan*/  sz; scalar_t__ addr; } ;
struct config {TYPE_2__ parser; struct config* error_message; TYPE_1__ mapped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC3(struct config *config)
{
    if (!config)
        return;

#if !defined(FUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION)
    if (config->mapped.addr)
        FUNC2(config->mapped.addr, config->mapped.sz);
#endif

    FUNC0(config->error_message);
    FUNC1(&config->parser.strbuf);
    FUNC0(config);
}