#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * subsequentMessage; } ;
struct TYPE_13__ {TYPE_1__ value; int /*<<< orphan*/  type; } ;
struct TYPE_12__ {TYPE_3__* popo; int /*<<< orphan*/  certReq; } ;
struct TYPE_10__ {TYPE_7__* keyEncipherment; int /*<<< orphan*/ * signature; int /*<<< orphan*/ * raVerified; } ;
struct TYPE_11__ {int type; TYPE_2__ value; } ;
typedef  int /*<<< orphan*/  OSSL_CRMF_POPOSIGNINGKEY ;
typedef  TYPE_3__ OSSL_CRMF_POPO ;
typedef  TYPE_4__ OSSL_CRMF_MSG ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  CRMF_F_OSSL_CRMF_MSG_CREATE_POPO ; 
 int /*<<< orphan*/  CRMF_R_NULL_ARGUMENT ; 
 int /*<<< orphan*/  CRMF_R_UNSUPPORTED_METHOD_FOR_CREATING_POPO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_CRMF_POPOPRIVKEY_SUBSEQUENTMESSAGE ; 
 TYPE_7__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
#define  OSSL_CRMF_POPO_KEYENC 130 
 int OSSL_CRMF_POPO_NONE ; 
#define  OSSL_CRMF_POPO_RAVERIFIED 129 
#define  OSSL_CRMF_POPO_SIGNATURE 128 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 TYPE_3__* FUNC9 () ; 
 int /*<<< orphan*/  OSSL_CRMF_SUBSEQUENTMESSAGE_ENCRCERT ; 

int FUNC10(OSSL_CRMF_MSG *crm, EVP_PKEY *pkey,
                              int dgst, int ppmtd)
{
    OSSL_CRMF_POPO *pp = NULL;
    ASN1_INTEGER *tag = NULL;

    if (crm == NULL || (ppmtd == OSSL_CRMF_POPO_SIGNATURE && pkey == NULL)) {
        FUNC4(CRMF_F_OSSL_CRMF_MSG_CREATE_POPO, CRMF_R_NULL_ARGUMENT);
        return 0;
    }

    if (ppmtd == OSSL_CRMF_POPO_NONE)
        goto end;
    if ((pp = FUNC9()) == NULL)
        goto err;
    pp->type = ppmtd;

    switch (ppmtd) {
    case OSSL_CRMF_POPO_RAVERIFIED:
        if ((pp->value.raVerified = FUNC2()) == NULL)
            goto err;
        break;

    case OSSL_CRMF_POPO_SIGNATURE:
        {
            OSSL_CRMF_POPOSIGNINGKEY *ps = FUNC7();
            if (ps == NULL
                    || !FUNC3(ps, crm->certReq, pkey, dgst)){
                FUNC6(ps);
                goto err;
            }
            pp->value.signature = ps;
        }
        break;

    case OSSL_CRMF_POPO_KEYENC:
        if ((pp->value.keyEncipherment = FUNC5()) == NULL)
            goto err;
        tag = FUNC0();
        pp->value.keyEncipherment->type =
            OSSL_CRMF_POPOPRIVKEY_SUBSEQUENTMESSAGE;
        pp->value.keyEncipherment->value.subsequentMessage = tag;
        if (tag == NULL
                || !FUNC1(tag, OSSL_CRMF_SUBSEQUENTMESSAGE_ENCRCERT))
            goto err;
        break;

    default:
        FUNC4(CRMF_F_OSSL_CRMF_MSG_CREATE_POPO,
                CRMF_R_UNSUPPORTED_METHOD_FOR_CREATING_POPO);
        goto err;
    }

 end:
    FUNC8(crm->popo);
    crm->popo = pp;

    return 1;
 err:
    FUNC8(pp);
    return 0;
}