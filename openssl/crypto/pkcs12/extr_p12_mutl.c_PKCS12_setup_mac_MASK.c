#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_ALGOR ;
struct TYPE_8__ {int /*<<< orphan*/  dinfo; TYPE_1__* salt; int /*<<< orphan*/ * iter; } ;
struct TYPE_7__ {TYPE_4__* mac; } ;
struct TYPE_6__ {int length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ PKCS12 ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int PKCS12_ERROR ; 
 int /*<<< orphan*/  PKCS12_F_PKCS12_SETUP_MAC ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 TYPE_4__* FUNC6 () ; 
 int PKCS12_SALT_LEN ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  V_ASN1_NULL ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned char*,int) ; 

int FUNC12(PKCS12 *p12, int iter, unsigned char *salt, int saltlen,
                     const EVP_MD *md_type)
{
    X509_ALGOR *macalg;

    FUNC5(p12->mac);
    p12->mac = NULL;

    if ((p12->mac = FUNC6()) == NULL)
        return PKCS12_ERROR;
    if (iter > 1) {
        if ((p12->mac->iter = FUNC0()) == NULL) {
            FUNC7(PKCS12_F_PKCS12_SETUP_MAC, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        if (!FUNC1(p12->mac->iter, iter)) {
            FUNC7(PKCS12_F_PKCS12_SETUP_MAC, ERR_R_MALLOC_FAILURE);
            return 0;
        }
    }
    if (!saltlen)
        saltlen = PKCS12_SALT_LEN;
    if ((p12->mac->salt->data = FUNC4(saltlen)) == NULL) {
        FUNC7(PKCS12_F_PKCS12_SETUP_MAC, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    p12->mac->salt->length = saltlen;
    if (!salt) {
        if (FUNC8(p12->mac->salt->data, saltlen) <= 0)
            return 0;
    } else
        FUNC11(p12->mac->salt->data, salt, saltlen);
    FUNC10(p12->mac->dinfo, &macalg, NULL);
    if (!FUNC9(macalg, FUNC3(FUNC2(md_type)),
                         V_ASN1_NULL, NULL)) {
        FUNC7(PKCS12_F_PKCS12_SETUP_MAC, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    return 1;
}