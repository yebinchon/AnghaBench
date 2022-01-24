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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

void FUNC4(BIO *bio, X509 *x,
                       const char *checkhost,
                       const char *checkemail, const char *checkip)
{
    if (x == NULL)
        return;
    if (checkhost) {
        FUNC0(bio, "Hostname %s does%s match certificate\n",
                   checkhost,
                   FUNC2(x, checkhost, 0, 0, NULL) == 1
                       ? "" : " NOT");
    }

    if (checkemail) {
        FUNC0(bio, "Email %s does%s match certificate\n",
                   checkemail, FUNC1(x, checkemail, 0, 0)
                   ? "" : " NOT");
    }

    if (checkip) {
        FUNC0(bio, "IP %s does%s match certificate\n",
                   checkip, FUNC3(x, checkip, 0) ? "" : " NOT");
    }
}