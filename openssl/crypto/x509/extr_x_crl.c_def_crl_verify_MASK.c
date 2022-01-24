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
struct TYPE_3__ {int /*<<< orphan*/  crl; int /*<<< orphan*/  signature; int /*<<< orphan*/  sig_alg; } ;
typedef  TYPE_1__ X509_CRL ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  X509_CRL_INFO ; 

__attribute__((used)) static int FUNC2(X509_CRL *crl, EVP_PKEY *r)
{
    return (FUNC1(FUNC0(X509_CRL_INFO),
                             &crl->sig_alg, &crl->signature, &crl->crl, r));
}