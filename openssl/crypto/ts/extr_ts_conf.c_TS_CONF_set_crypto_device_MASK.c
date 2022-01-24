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
 int /*<<< orphan*/  ENV_CRYPTO_DEVICE ; 
 char* FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 

int FUNC3(CONF *conf, const char *section,
                              const char *device)
{
    int ret = 0;

    if (device == NULL)
        device = FUNC0(conf, section, ENV_CRYPTO_DEVICE);

    if (device && !FUNC1(device)) {
        FUNC2(section, ENV_CRYPTO_DEVICE);
        goto err;
    }
    ret = 1;
 err:
    return ret;
}