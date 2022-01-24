#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_7__ {char* data; int len; } ;
typedef  TYPE_1__* StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FATAL ; 
 char* _base64 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  armor_footer ; 
 int /*<<< orphan*/  armor_header ; 
 unsigned int FUNC3 (int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 unsigned int FUNC6 (unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 

void
FUNC8(const uint8 *src, unsigned len, StringInfo dst,
				 int num_headers, char **keys, char **values)
{
	int			n;
	int			res;
	unsigned	b64len;
	unsigned	crc = FUNC3(src, len);

	FUNC2(dst, armor_header);

	for (n = 0; n < num_headers; n++)
		FUNC0(dst, "%s: %s\n", keys[n], values[n]);
	FUNC1(dst, '\n');

	/* make sure we have enough room to pg_base64_encode() */
	b64len = FUNC6(len);
	FUNC5(dst, (int) b64len);

	res = FUNC7(src, len, (uint8 *) dst->data + dst->len);
	if (res > b64len)
		FUNC4(FATAL, "overflow - encode estimate too small");
	dst->len += res;

	if (*(dst->data + dst->len - 1) != '\n')
		FUNC1(dst, '\n');

	FUNC1(dst, '=');
	FUNC1(dst, _base64[(crc >> 18) & 0x3f]);
	FUNC1(dst, _base64[(crc >> 12) & 0x3f]);
	FUNC1(dst, _base64[(crc >> 6) & 0x3f]);
	FUNC1(dst, _base64[crc & 0x3f]);

	FUNC2(dst, armor_footer);
}