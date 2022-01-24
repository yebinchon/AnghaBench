#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ type; } ;
struct TYPE_10__ {int version; TYPE_2__* originatorInfo; } ;
struct TYPE_9__ {int /*<<< orphan*/  crls; int /*<<< orphan*/  certificates; } ;
struct TYPE_8__ {scalar_t__ type; } ;
typedef  TYPE_1__ CMS_RevocationInfoChoice ;
typedef  TYPE_2__ CMS_OriginatorInfo ;
typedef  TYPE_3__ CMS_EnvelopedData ;
typedef  TYPE_4__ CMS_CertificateChoices ;

/* Variables and functions */
 scalar_t__ CMS_CERTCHOICE_OTHER ; 
 scalar_t__ CMS_CERTCHOICE_V2ACERT ; 
 scalar_t__ CMS_REVCHOICE_OTHER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(CMS_EnvelopedData *env)
{
    CMS_OriginatorInfo *org = env->originatorInfo;
    int i;
    if (org == NULL)
        return;
    for (i = 0; i < FUNC0(org->certificates); i++) {
        CMS_CertificateChoices *cch;
        cch = FUNC1(org->certificates, i);
        if (cch->type == CMS_CERTCHOICE_OTHER) {
            env->version = 4;
            return;
        } else if (cch->type == CMS_CERTCHOICE_V2ACERT) {
            if (env->version < 3)
                env->version = 3;
        }
    }

    for (i = 0; i < FUNC2(org->crls); i++) {
        CMS_RevocationInfoChoice *rch;
        rch = FUNC3(org->crls, i);
        if (rch->type == CMS_REVCHOICE_OTHER) {
            env->version = 4;
            return;
        }
    }
}