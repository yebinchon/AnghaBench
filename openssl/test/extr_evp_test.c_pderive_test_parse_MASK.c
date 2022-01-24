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
struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  output_len; int /*<<< orphan*/  output; } ;
typedef  TYPE_1__ PKEY_DATA ;
typedef  TYPE_2__ EVP_TEST ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  public_keys ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(EVP_TEST *t,
                              const char *keyword, const char *value)
{
    PKEY_DATA *kdata = t->data;

    if (FUNC4(keyword, "PeerKey") == 0) {
        EVP_PKEY *peer;
        if (FUNC1(&peer, value, public_keys) == 0)
            return -1;
        if (FUNC0(kdata->ctx, peer) <= 0)
            return -1;
        return 1;
    }
    if (FUNC4(keyword, "SharedSecret") == 0)
        return FUNC2(value, &kdata->output, &kdata->output_len);
    if (FUNC4(keyword, "Ctrl") == 0)
        return FUNC3(t, kdata->ctx, value);
    return 0;
}