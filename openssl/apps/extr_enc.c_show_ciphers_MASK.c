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
struct doall_enc_ciphers {int n; int /*<<< orphan*/  bio; } ;
struct TYPE_3__ {scalar_t__* name; } ;
typedef  TYPE_1__ OBJ_NAME ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int EVP_CIPH_FLAG_AEAD_CIPHER ; 
 scalar_t__ EVP_CIPH_XTS_MODE ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char) ; 

__attribute__((used)) static void FUNC5(const OBJ_NAME *name, void *arg)
{
    struct doall_enc_ciphers *dec = (struct doall_enc_ciphers *)arg;
    const EVP_CIPHER *cipher;

    if (!FUNC4((unsigned char)*name->name))
        return;

    /* Filter out ciphers that we cannot use */
    cipher = FUNC3(name->name);
    if (cipher == NULL ||
            (FUNC1(cipher) & EVP_CIPH_FLAG_AEAD_CIPHER) != 0 ||
            FUNC2(cipher) == EVP_CIPH_XTS_MODE)
        return;

    FUNC0(dec->bio, "-%-25s", name->name);
    if (++dec->n == 3) {
        FUNC0(dec->bio, "\n");
        dec->n = 0;
    } else
        FUNC0(dec->bio, " ");
}