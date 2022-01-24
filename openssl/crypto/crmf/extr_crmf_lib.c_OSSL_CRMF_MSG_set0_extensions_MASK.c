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
typedef  int /*<<< orphan*/  X509_EXTENSIONS ;
struct TYPE_3__ {int /*<<< orphan*/ * extensions; } ;
typedef  int /*<<< orphan*/  OSSL_CRMF_MSG ;
typedef  TYPE_1__ OSSL_CRMF_CERTTEMPLATE ;

/* Variables and functions */
 int /*<<< orphan*/  CRMF_F_OSSL_CRMF_MSG_SET0_EXTENSIONS ; 
 int /*<<< orphan*/  CRMF_R_NULL_ARGUMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  X509_EXTENSION_free ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(OSSL_CRMF_MSG *crm,
                                  X509_EXTENSIONS *exts)
{
    OSSL_CRMF_CERTTEMPLATE *tmpl = FUNC1(crm);

    if (tmpl == NULL) { /* also crm == NULL implies this */
        FUNC0(CRMF_F_OSSL_CRMF_MSG_SET0_EXTENSIONS, CRMF_R_NULL_ARGUMENT);
        return 0;
    }

    if (FUNC3(exts) == 0) {
        FUNC2(exts);
        exts = NULL; /* do not include empty extensions list */
    }

    FUNC4(tmpl->extensions, X509_EXTENSION_free);
    tmpl->extensions = exts;
    return 1;
}