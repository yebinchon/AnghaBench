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
typedef  int /*<<< orphan*/  X509_REQ ;
typedef  int /*<<< orphan*/  X509_NAME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,unsigned long,int) ; 

__attribute__((used)) static int FUNC3(X509_REQ *req, const char *subject, unsigned long chtype,
                         int multirdn)
{
    X509_NAME *n;

    if ((n = FUNC2(subject, chtype, multirdn)) == NULL)
        return 0;

    if (!FUNC1(req, n)) {
        FUNC0(n);
        return 0;
    }
    FUNC0(n);
    return 1;
}