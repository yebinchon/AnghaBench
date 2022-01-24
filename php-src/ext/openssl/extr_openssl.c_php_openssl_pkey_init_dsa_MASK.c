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
typedef  int /*<<< orphan*/  DSA ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static zend_bool FUNC8(DSA *dsa, zval *data)
{
	BIGNUM *p, *q, *g, *priv_key, *pub_key;
	const BIGNUM *priv_key_const, *pub_key_const;

	FUNC5(data, p);
	FUNC5(data, q);
	FUNC5(data, g);
	if (!p || !q || !g || !FUNC4(dsa, p, q, g)) {
		return 0;
	}

	FUNC5(data, pub_key);
	FUNC5(data, priv_key);
	if (pub_key) {
		return FUNC3(dsa, pub_key, priv_key);
	}

	/* generate key */
	FUNC6();
	if (!FUNC1(dsa)) {
		FUNC7();
		return 0;
	}

	/* if BN_mod_exp return -1, then DSA_generate_key succeed for failed key
	 * so we need to double check that public key is created */
	FUNC2(dsa, &pub_key_const, &priv_key_const);
	if (!pub_key_const || FUNC0(pub_key_const)) {
		return 0;
	}
	/* all good */
	return 1;
}