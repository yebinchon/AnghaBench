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
typedef  int /*<<< orphan*/  const zend_uchar ;
typedef  int /*<<< orphan*/  PHP_SHA1_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const* const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t const) ; 
 int SCRAMBLE_LENGTH ; 
 int SHA1_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const* const,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

void FUNC4(zend_uchar * const buffer, const zend_uchar * const scramble, const zend_uchar * const password, const size_t password_len)
{
	PHP_SHA1_CTX context;
	zend_uchar sha1[SHA1_MAX_LENGTH];
	zend_uchar sha2[SHA1_MAX_LENGTH];

	/* Phase 1: hash password */
	FUNC1(&context);
	FUNC2(&context, password, password_len);
	FUNC0(sha1, &context);

	/* Phase 2: hash sha1 */
	FUNC1(&context);
	FUNC2(&context, (zend_uchar*)sha1, SHA1_MAX_LENGTH);
	FUNC0(sha2, &context);

	/* Phase 3: hash scramble + sha2 */
	FUNC1(&context);
	FUNC2(&context, scramble, SCRAMBLE_LENGTH);
	FUNC2(&context, (zend_uchar*)sha2, SHA1_MAX_LENGTH);
	FUNC0(buffer, &context);

	/* let's crypt buffer now */
	FUNC3(buffer, (const zend_uchar *)buffer, (const zend_uchar *)sha1, SHA1_MAX_LENGTH);
}