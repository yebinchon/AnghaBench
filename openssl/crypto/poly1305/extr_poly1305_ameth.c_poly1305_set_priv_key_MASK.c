#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * ptr; } ;
struct TYPE_5__ {TYPE_1__ pkey; } ;
typedef  TYPE_2__ EVP_PKEY ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 size_t POLY1305_KEY_SIZE ; 

__attribute__((used)) static int FUNC3(EVP_PKEY *pkey, const unsigned char *priv,
                                 size_t len)
{
    ASN1_OCTET_STRING *os;

    if (pkey->pkey.ptr != NULL || len != POLY1305_KEY_SIZE)
        return 0;

    os = FUNC1();
    if (os == NULL)
        return 0;

    if (!FUNC2(os, priv, len)) {
        FUNC0(os);
        return 0;
    }

    pkey->pkey.ptr = os;
    return 1;
}