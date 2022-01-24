#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int zend_bool ;
typedef  int /*<<< orphan*/  RSA ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static zend_bool FUNC6(EVP_PKEY *pkey, RSA *rsa, zval *data)
{
	BIGNUM *n, *e, *d, *p, *q, *dmp1, *dmq1, *iqmp;

	FUNC1(data, n);
	FUNC1(data, e);
	FUNC1(data, d);
	if (!n || !d || !FUNC4(rsa, n, e, d)) {
		return 0;
	}

	FUNC1(data, p);
	FUNC1(data, q);
	if ((p || q) && !FUNC3(rsa, p, q)) {
		return 0;
	}

	FUNC1(data, dmp1);
	FUNC1(data, dmq1);
	FUNC1(data, iqmp);
	if ((dmp1 || dmq1 || iqmp) && !FUNC2(rsa, dmp1, dmq1, iqmp)) {
		return 0;
	}

	if (!FUNC0(pkey, rsa)) {
		FUNC5();
		return 0;
	}

	return 1;
}