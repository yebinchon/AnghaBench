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
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static zend_bool FUNC7(DH *dh, zval *data)
{
	BIGNUM *p, *q, *g, *priv_key, *pub_key;

	FUNC3(data, p);
	FUNC3(data, q);
	FUNC3(data, g);
	if (!p || !g || !FUNC2(dh, p, q, g)) {
		return 0;
	}

	FUNC3(data, priv_key);
	FUNC3(data, pub_key);
	if (pub_key) {
		return FUNC1(dh, pub_key, priv_key);
	}
	if (priv_key) {
		pub_key = FUNC5(priv_key, g, p);
		if (pub_key == NULL) {
			return 0;
		}
		return FUNC1(dh, pub_key, priv_key);
	}

	/* generate key */
	FUNC4();
	if (!FUNC0(dh)) {
		FUNC6();
		return 0;
	}
	/* all good */
	return 1;
}