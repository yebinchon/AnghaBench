#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  min_dtls; } ;
typedef  TYPE_1__ SSL_CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,size_t*,size_t*,size_t*,size_t*) ; 

__attribute__((used)) static int FUNC5(void)
{
    int ret = 1, i, n = FUNC3();
    const SSL_CIPHER *ciph;
    size_t mac, in, blk, ex;

    for (i = 0; i < n; i++) {
        ciph = FUNC2(i);
        if (!ciph->min_dtls)
            continue;
        if (!FUNC1(FUNC4(ciph, &mac, &in, &blk, &ex))) {
            FUNC0("Failed getting %s", ciph->name);
            ret = 0;
        } else {
            FUNC0("Cipher %s: %zu %zu %zu %zu",
                      ciph->name, mac, in, blk, ex);
        }
    }
    return ret;
}