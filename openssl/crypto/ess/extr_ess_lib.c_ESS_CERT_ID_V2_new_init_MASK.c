#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hash ;
struct TYPE_17__ {int /*<<< orphan*/ * algorithm; } ;
typedef  TYPE_2__ X509_ALGOR ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_19__ {TYPE_11__* issuer_serial; int /*<<< orphan*/  hash; TYPE_2__* hash_alg; } ;
struct TYPE_16__ {int /*<<< orphan*/ * dirn; } ;
struct TYPE_18__ {TYPE_1__ d; int /*<<< orphan*/  type; } ;
struct TYPE_15__ {int /*<<< orphan*/ * serial; int /*<<< orphan*/  issuer; } ;
typedef  TYPE_3__ GENERAL_NAME ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  TYPE_4__ ESS_CERT_ID_V2 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 TYPE_4__* FUNC4 () ; 
 int /*<<< orphan*/  ESS_F_ESS_CERT_ID_V2_NEW_INIT ; 
 TYPE_11__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  const* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 TYPE_3__* FUNC9 () ; 
 int /*<<< orphan*/  GEN_DIRNAME ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 TYPE_2__* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static ESS_CERT_ID_V2 *FUNC19(const EVP_MD *hash_alg,
                                               X509 *cert, int issuer_needed)
{
    ESS_CERT_ID_V2 *cid;
    GENERAL_NAME *name = NULL;
    unsigned char hash[EVP_MAX_MD_SIZE];
    unsigned int hash_len = sizeof(hash);
    X509_ALGOR *alg = NULL;

    FUNC17(hash, 0, sizeof(hash));

    if ((cid = FUNC4()) == NULL)
        goto err;

    if (hash_alg != FUNC7()) {
        alg = FUNC11();
        if (alg == NULL)
            goto err;
        FUNC12(alg, hash_alg);
        if (alg->algorithm == NULL)
            goto err;
        cid->hash_alg = alg;
        alg = NULL;
    } else {
        cid->hash_alg = NULL;
    }

    if (!FUNC14(cert, hash_alg, hash, &hash_len))
        goto err;

    if (!FUNC2(cid->hash, hash, hash_len))
        goto err;

    if (!issuer_needed)
        return cid;

    if ((cid->issuer_serial = FUNC5()) == NULL)
        goto err;
    if ((name = FUNC9()) == NULL)
        goto err;
    name->type = GEN_DIRNAME;
    if ((name->d.dirn = FUNC13(FUNC15(cert))) == NULL)
        goto err;
    if (!FUNC18(cid->issuer_serial->issuer, name))
        goto err;
    name = NULL;            /* Ownership is lost. */
    FUNC1(cid->issuer_serial->serial);
    cid->issuer_serial->serial = FUNC0(FUNC16(cert));
    if (cid->issuer_serial->serial == NULL)
        goto err;

    return cid;
 err:
    FUNC10(alg);
    FUNC8(name);
    FUNC3(cid);
    FUNC6(ESS_F_ESS_CERT_ID_V2_NEW_INIT, ERR_R_MALLOC_FAILURE);
    return NULL;
}