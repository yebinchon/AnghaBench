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
typedef  int /*<<< orphan*/  php_stream ;
typedef  int /*<<< orphan*/  markername ;

/* Variables and functions */
 int M_APP0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 unsigned short FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned short FUNC5 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(php_stream * stream, unsigned int marker, zval *info)
{
	unsigned short length;
	char *buffer;
	char markername[16];
	zval *tmp;

	length = FUNC4(stream);
	if (length < 2)	{
		return 0;
	}
	length -= 2;				/* length includes itself */

	buffer = FUNC3((size_t)length);

	if (FUNC5(stream, buffer, (size_t) length) != length) {
		FUNC2(buffer);
		return 0;
	}

	FUNC6(markername, sizeof(markername), "APP%d", marker - M_APP0);

	if ((tmp = FUNC8(FUNC0(info), markername, FUNC7(markername))) == NULL) {
		/* XXX we only catch the 1st tag of it's kind! */
		FUNC1(info, markername, buffer, length);
	}

	FUNC2(buffer);
	return 1;
}