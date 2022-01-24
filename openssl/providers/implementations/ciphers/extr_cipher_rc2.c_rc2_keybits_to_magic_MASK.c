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

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_UNSUPPORTED_KEY_SIZE ; 
 int RC2_128_MAGIC ; 
 int RC2_40_MAGIC ; 
 int RC2_64_MAGIC ; 

__attribute__((used)) static int FUNC1(int keybits)
{
    switch (keybits) {
    case 128:
        return RC2_128_MAGIC;
    case 64:
        return RC2_64_MAGIC;
    case 40:
        return RC2_40_MAGIC;
    }
    FUNC0(ERR_LIB_PROV, PROV_R_UNSUPPORTED_KEY_SIZE);
    return 0;
}