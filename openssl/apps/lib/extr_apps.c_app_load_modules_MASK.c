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
typedef  int /*<<< orphan*/  CONF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  default_config_file ; 

int FUNC5(const CONF *config)
{
    CONF *to_free = NULL;

    if (config == NULL)
        config = to_free = FUNC4(default_config_file);
    if (config == NULL)
        return 1;

    if (FUNC1(config, NULL, 0) <= 0) {
        FUNC0(bio_err, "Error configuring OpenSSL modules\n");
        FUNC2(bio_err);
        FUNC3(to_free);
        return 0;
    }
    FUNC3(to_free);
    return 1;
}