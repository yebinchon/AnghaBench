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
typedef  TYPE_1__ KDF_DATA ;
typedef  TYPE_2__ EVP_TEST ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC4(EVP_TEST *t,
                          const char *keyword, const char *value)
{
    KDF_DATA *kdata = t->data;

    if (FUNC2(keyword, "Output") == 0)
        return FUNC1(value, &kdata->output, &kdata->output_len);
    if (FUNC3(keyword, "Ctrl", 4) == 0)
        return FUNC0(t, kdata->ctx, value);
    return 0;
}