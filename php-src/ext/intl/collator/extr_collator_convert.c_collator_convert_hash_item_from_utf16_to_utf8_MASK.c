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
typedef  int /*<<< orphan*/  zend_ulong ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  UErrorCode ;
typedef  int /*<<< orphan*/  UChar ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 scalar_t__ IS_STRING ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(
	HashTable* hash, zval * hashData, zend_string* hashKey, zend_ulong hashIndex,
	UErrorCode* status )
{
	const char* old_val;
	size_t      old_val_len;
	zend_string* u8str;
	zval        znew_val;

	/* Process string values only. */
	if( FUNC4( hashData ) != IS_STRING )
		return;

	old_val     = FUNC3( hashData );
	old_val_len = FUNC2( hashData );

	/* Convert it from UTF-16LE to UTF-8 and save the result to new_val[_len]. */
	u8str = FUNC5(
		(UChar*)old_val, FUNC0(old_val_len), status );
	if( !u8str )
		return;

	/* Update current hash item with the converted value. */
	FUNC1( &znew_val, u8str);

	if( hashKey )
	{
		FUNC7( hash, hashKey, &znew_val);
	}
	else /* hashKeyType == HASH_KEY_IS_LONG */
	{
		FUNC6( hash, hashIndex, &znew_val);
	}
}