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
typedef  int XMLRPC_VALUE_TYPE ;
typedef  scalar_t__ XMLRPC_VALUE ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 char const* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 char* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
#define  xmlrpc_base64 135 
#define  xmlrpc_boolean 134 
#define  xmlrpc_datetime 133 
#define  xmlrpc_double 132 
#define  xmlrpc_empty 131 
#define  xmlrpc_int 130 
#define  xmlrpc_string 129 
#define  xmlrpc_vector 128 

__attribute__((used)) static void FUNC21(XMLRPC_VALUE el, zval *elem)
{
	const char* pStr;

	if (el) {
		XMLRPC_VALUE_TYPE type = FUNC8(el);

		switch (type) {
			case xmlrpc_empty:
				FUNC14(elem);
				break;
			case xmlrpc_string:
				pStr = FUNC6(el);
				if (pStr) {
					FUNC15(elem, pStr, FUNC7(el));
				}
				break;
			case xmlrpc_int:
				FUNC13(elem, FUNC5(el));
				break;
			case xmlrpc_boolean:
				FUNC11(elem, FUNC1(el));
				break;
			case xmlrpc_double:
				FUNC12(elem, FUNC3(el));
				break;
			case xmlrpc_datetime:
				FUNC15(elem, FUNC2(el), FUNC7(el));
				break;
			case xmlrpc_base64:
				pStr = FUNC0(el);
				if (pStr) {
					FUNC15(elem, pStr, FUNC7(el));
				}
				break;
			case xmlrpc_vector:
				FUNC19(elem);
				{
					XMLRPC_VALUE xIter = FUNC10(el);

					while( xIter ) {
						zval val;
						FUNC16(&val);
						FUNC21(xIter, &val);
						if (!FUNC17(val)) {
							FUNC18(elem, FUNC4(xIter), &val);
						}
						xIter = FUNC9(el);
					}
				}
				break;
			default:
				break;
		}
		FUNC20(elem, type);
	}
}