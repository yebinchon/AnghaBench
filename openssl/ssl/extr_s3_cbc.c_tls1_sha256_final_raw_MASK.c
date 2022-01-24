#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * h; } ;
typedef  TYPE_1__ SHA256_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*) ; 

__attribute__((used)) static void FUNC1(void *ctx, unsigned char *md_out)
{
    SHA256_CTX *sha256 = ctx;
    unsigned i;

    for (i = 0; i < 8; i++) {
        FUNC0(sha256->h[i], md_out);
    }
}