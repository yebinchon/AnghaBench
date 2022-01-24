#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct v3_ext_method {int dummy; } ;
typedef  int /*<<< orphan*/  objbuf ;
struct TYPE_8__ {int /*<<< orphan*/  professionInfos; int /*<<< orphan*/ * namingAuthority; int /*<<< orphan*/ * admissionAuthority; } ;
struct TYPE_7__ {int /*<<< orphan*/  contentsOfAdmissions; int /*<<< orphan*/ * admissionAuthority; } ;
struct TYPE_6__ {int /*<<< orphan*/ * professionOIDs; int /*<<< orphan*/ * professionItems; int /*<<< orphan*/ * namingAuthority; int /*<<< orphan*/ * registrationNumber; } ;
typedef  TYPE_1__ PROFESSION_INFO ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;
typedef  TYPE_2__ ADMISSION_SYNTAX ;
typedef  TYPE_3__ ADMISSIONS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (struct v3_ext_method const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(const struct v3_ext_method *method, void *in,
                                BIO *bp, int ind)
{
    ADMISSION_SYNTAX * admission = (ADMISSION_SYNTAX *)in;
    int i, j, k;

    if (admission->admissionAuthority != NULL) {
        if (FUNC1(bp, "%*sadmissionAuthority:\n", ind, "") <= 0
            || FUNC1(bp, "%*s  ", ind, "") <= 0
            || FUNC2(bp, admission->admissionAuthority) <= 0
            || FUNC1(bp, "\n") <= 0)
            goto err;
    }

    for (i = 0; i < FUNC7(admission->contentsOfAdmissions); i++) {
        ADMISSIONS* entry = FUNC8(admission->contentsOfAdmissions, i);

        if (FUNC1(bp, "%*sEntry %0d:\n", ind, "", 1 + i) <= 0) goto err;

        if (entry->admissionAuthority != NULL) {
            if (FUNC1(bp, "%*s  admissionAuthority:\n", ind, "") <= 0
                || FUNC1(bp, "%*s    ", ind, "") <= 0
                || FUNC2(bp, entry->admissionAuthority) <= 0
                || FUNC1(bp, "\n") <= 0)
                goto err;
        }

        if (entry->namingAuthority != NULL) {
            if (FUNC6(method, entry->namingAuthority, bp, ind) <= 0)
                goto err;
        }

        for (j = 0; j < FUNC13(entry->professionInfos); j++) {
            PROFESSION_INFO* pinfo = FUNC14(entry->professionInfos, j);

            if (FUNC1(bp, "%*s  Profession Info Entry %0d:\n", ind, "", 1 + j) <= 0)
                goto err;

            if (pinfo->registrationNumber != NULL) {
                if (FUNC1(bp, "%*s    registrationNumber: ", ind, "") <= 0
                    || FUNC0(bp, pinfo->registrationNumber) <= 0
                    || FUNC1(bp, "\n") <= 0)
                    goto err;
            }

            if (pinfo->namingAuthority != NULL) {
                if (FUNC6(method, pinfo->namingAuthority, bp, ind + 2) <= 0)
                    goto err;
            }

            if (pinfo->professionItems != NULL) {

                if (FUNC1(bp, "%*s    Info Entries:\n", ind, "") <= 0)
                    goto err;
                for (k = 0; k < FUNC11(pinfo->professionItems); k++) {
                    ASN1_STRING* val = FUNC12(pinfo->professionItems, k);

                    if (FUNC1(bp, "%*s      ", ind, "") <= 0
                        || FUNC0(bp, val) <= 0
                        || FUNC1(bp, "\n") <= 0)
                        goto err;
                }
            }

            if (pinfo->professionOIDs != NULL) {
                if (FUNC1(bp, "%*s    Profession OIDs:\n", ind, "") <= 0)
                    goto err;
                for (k = 0; k < FUNC9(pinfo->professionOIDs); k++) {
                    ASN1_OBJECT* obj = FUNC10(pinfo->professionOIDs, k);
                    const char *ln = FUNC3(FUNC4(obj));
                    char objbuf[128];

                    FUNC5(objbuf, sizeof(objbuf), obj, 1);
                    if (FUNC1(bp, "%*s      %s%s%s%s\n", ind, "",
                                   ln ? ln : "", ln ? " (" : "",
                                   objbuf, ln ? ")" : "") <= 0)
                        goto err;
                }
            }
        }
    }
    return 1;

err:
    return -1;
}