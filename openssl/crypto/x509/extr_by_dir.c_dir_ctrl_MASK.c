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
struct TYPE_3__ {scalar_t__ method_data; } ;
typedef  TYPE_1__ X509_LOOKUP ;
typedef  int /*<<< orphan*/  BY_DIR ;

/* Variables and functions */
 long X509_FILETYPE_DEFAULT ; 
 int X509_FILETYPE_PEM ; 
 int /*<<< orphan*/  X509_F_DIR_CTRL ; 
#define  X509_L_ADD_DIR 128 
 int /*<<< orphan*/  X509_R_LOADING_CERT_DIR ; 
 char const* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(X509_LOOKUP *ctx, int cmd, const char *argp, long argl,
                    char **retp)
{
    int ret = 0;
    BY_DIR *ld = (BY_DIR *)ctx->method_data;

    switch (cmd) {
    case X509_L_ADD_DIR:
        if (argl == X509_FILETYPE_DEFAULT) {
            const char *dir = FUNC4(FUNC1());

            if (dir)
                ret = FUNC3(ld, dir, X509_FILETYPE_PEM);
            else
                ret = FUNC3(ld, FUNC0(),
                                   X509_FILETYPE_PEM);
            if (!ret) {
                FUNC2(X509_F_DIR_CTRL, X509_R_LOADING_CERT_DIR);
            }
        } else
            ret = FUNC3(ld, argp, (int)argl);
        break;
    }
    return ret;
}