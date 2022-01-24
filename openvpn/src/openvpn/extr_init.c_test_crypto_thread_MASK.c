#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct options {int /*<<< orphan*/  test_crypto; } ;
struct TYPE_6__ {int /*<<< orphan*/  packet_id; } ;
struct TYPE_5__ {TYPE_3__ crypto_options; int /*<<< orphan*/  frame; } ;
struct TYPE_4__ {int /*<<< orphan*/  ks; } ;
struct context {TYPE_2__ c2; TYPE_1__ c1; struct options options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IVM_LEVEL_1 ; 
 int /*<<< orphan*/  FUNC1 (struct context*) ; 
 int /*<<< orphan*/  FUNC2 (struct context*) ; 
 int /*<<< orphan*/  FUNC3 (struct context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct context*,struct options const*) ; 
 int /*<<< orphan*/  FUNC5 (struct context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct context*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *
FUNC10(void *arg)
{
    struct context *c = (struct context *) arg;
    const struct options *options = &c->options;

    FUNC0(options->test_crypto);
    FUNC5(c, IVM_LEVEL_1);
    FUNC2(c);
    FUNC7(c);
    FUNC3(c, 0);

    FUNC4(c, options);

    FUNC9(&c->c2.crypto_options, &c->c2.frame);

    FUNC6(&c->c1.ks, true);
    FUNC8(&c->c2.crypto_options.packet_id);

    FUNC1(c);
    return NULL;
}