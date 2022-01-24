#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sha1; int /*<<< orphan*/  md5; } ;
typedef  TYPE_1__ MD5_SHA1_CTX ;

/* Variables and functions */
 int MD5_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (unsigned char*,int /*<<< orphan*/ *) ; 

int FUNC2(unsigned char *md, MD5_SHA1_CTX *mctx)
{
    if (!FUNC0(md, &mctx->md5))
        return 0;
    return FUNC1(md + MD5_DIGEST_LENGTH, &mctx->sha1);
}