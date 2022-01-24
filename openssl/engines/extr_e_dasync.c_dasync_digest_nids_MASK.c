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
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 

__attribute__((used)) static int FUNC2(const int **nids)
{
    static int digest_nids[2] = { 0, 0 };
    static int pos = 0;
    static int init = 0;

    if (!init) {
        const EVP_MD *md;
        if ((md = FUNC1()) != NULL)
            digest_nids[pos++] = FUNC0(md);
        digest_nids[pos] = 0;
        init = 1;
    }
    *nids = digest_nids;
    return pos;
}