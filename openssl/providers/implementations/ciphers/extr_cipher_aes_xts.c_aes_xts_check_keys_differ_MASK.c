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
 scalar_t__ FUNC0 (unsigned char const*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_XTS_DUPLICATED_KEYS ; 
 int /*<<< orphan*/  allow_insecure_decrypt ; 

__attribute__((used)) static int FUNC2(const unsigned char *key, size_t bytes,
                                     int enc)
{
    if ((!allow_insecure_decrypt || enc)
            && FUNC0(key, key + bytes, bytes) == 0) {
        FUNC1(ERR_LIB_PROV, PROV_R_XTS_DUPLICATED_KEYS);
        return 0;
    }
    return 1;
}