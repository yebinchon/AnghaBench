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
typedef  int /*<<< orphan*/  zend_ulong ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int ssize_t ;
struct TYPE_4__ {char* d_name; } ;
typedef  TYPE_1__ php_stream_dirent ;
struct TYPE_5__ {scalar_t__ abstract; } ;
typedef  TYPE_2__ php_stream ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 scalar_t__ HASH_KEY_NON_EXISTENT ; 
 size_t FUNC0 (size_t,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(php_stream *stream, char *buf, size_t count) /* {{{ */
{
	size_t to_read;
	HashTable *data = (HashTable *)stream->abstract;
	zend_string *str_key;
	zend_ulong unused;

	if (HASH_KEY_NON_EXISTENT == FUNC5(data, &str_key, &unused)) {
		return 0;
	}

	FUNC6(data);
	to_read = FUNC0(FUNC1(str_key), count);

	if (to_read == 0 || count < FUNC1(str_key)) {
		return 0;
	}

	FUNC4(buf, 0, sizeof(php_stream_dirent));
	FUNC3(((php_stream_dirent *) buf)->d_name, FUNC2(str_key), to_read);
	((php_stream_dirent *) buf)->d_name[to_read + 1] = '\0';

	return sizeof(php_stream_dirent);
}