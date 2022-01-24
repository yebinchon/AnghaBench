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
typedef  int /*<<< orphan*/  CMS_ContentInfo ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int CMS_DETACHED ; 
 unsigned int CMS_STREAM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*) ; 

CMS_ContentInfo *FUNC5(BIO *in, const EVP_MD *md,
                                   unsigned int flags)
{
    CMS_ContentInfo *cms;
    if (!md)
        md = FUNC3();
    cms = FUNC4(md);
    if (!cms)
        return NULL;

    if (!(flags & CMS_DETACHED))
        FUNC2(cms, 0);

    if ((flags & CMS_STREAM) || FUNC1(cms, in, NULL, flags))
        return cms;

    FUNC0(cms);
    return NULL;
}