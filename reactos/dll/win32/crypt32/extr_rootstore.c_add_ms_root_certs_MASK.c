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
struct TYPE_3__ {int /*<<< orphan*/  cb; int /*<<< orphan*/  pb; } ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  size_t DWORD ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CERT_STORE_ADD_NEW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509_ASN_ENCODING ; 
 TYPE_1__* msRootCerts ; 

__attribute__((used)) static void FUNC5(HCERTSTORE to)
{
    DWORD i;

    FUNC3("\n");

    for (i = 0; i < FUNC0(msRootCerts); i++)
        if (!FUNC1(to, X509_ASN_ENCODING,
         msRootCerts[i].pb, msRootCerts[i].cb, CERT_STORE_ADD_NEW, NULL))
            FUNC4("adding root cert %d failed: %08x\n", i, FUNC2());
}