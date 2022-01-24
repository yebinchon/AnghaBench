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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int CMS_TEXT ; 

__attribute__((used)) static BIO *FUNC4(BIO *out, unsigned int flags)
{
    BIO *rbio;
    if (out == NULL)
        rbio = FUNC0(FUNC2());
    else if (flags & CMS_TEXT) {
        rbio = FUNC0(FUNC1());
        FUNC3(rbio, 0);
    } else
        rbio = out;
    return rbio;
}