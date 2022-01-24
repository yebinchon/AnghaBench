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
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  int /*<<< orphan*/  encodeTypePtr ;
typedef  int /*<<< orphan*/ * encodePtr ;

/* Variables and functions */
 int /*<<< orphan*/  APACHE_MAP ; 
 scalar_t__ IS_ARRAY ; 
 int /*<<< orphan*/  IS_NULL ; 
 int /*<<< orphan*/  SOAP_ENC_ARRAY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static xmlNodePtr FUNC4(encodeTypePtr type, zval *data, int style, xmlNodePtr parent)
{
	encodePtr enc = NULL;

	if (data && FUNC0(data) == IS_ARRAY) {
		if (FUNC2(data)) {
			enc = FUNC1(APACHE_MAP);
		} else {
			enc = FUNC1(SOAP_ENC_ARRAY);
		}
	}
	if (!enc) {
		enc = FUNC1(IS_NULL);
	}

	return FUNC3(enc, data, style, parent);
}