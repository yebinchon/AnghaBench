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
typedef  int zend_php_scanner_event ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int END ; 
 int /*<<< orphan*/  IS_ARRAY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  ON_FEEDBACK 130 
#define  ON_STOP 129 
#define  ON_TOKEN 128 
 int T_CLOSE_TAG ; 
 int T_ECHO ; 
 int T_INLINE_HTML ; 
 int T_OPEN_TAG_WITH_ECHO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  yy_cursor ; 
 int /*<<< orphan*/  yy_leng ; 
 int /*<<< orphan*/  yy_limit ; 
 int /*<<< orphan*/  yy_text ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zend_lineno ; 

void FUNC8(zend_php_scanner_event event, int token, int line, void *context)
{
	zval *token_stream = (zval *) context;
	HashTable *tokens_ht;
	zval *token_zv;

	switch (event) {
		case ON_TOKEN:
			{
				if (token == END) break;
				/* Special cases */
				if (token == ';' && FUNC1(yy_leng) > 1) { /* ?> or ?>\n or ?>\r\n */
					token = T_CLOSE_TAG;
				} else if (token == T_ECHO && FUNC1(yy_leng) == sizeof("<?=") - 1) {
					token = T_OPEN_TAG_WITH_ECHO;
				}
				FUNC5(token_stream, token, FUNC1(yy_text), FUNC1(yy_leng), line);
			}
			break;
		case ON_FEEDBACK:
			tokens_ht = FUNC3(token_stream);
			token_zv = FUNC6(tokens_ht, FUNC7(tokens_ht) - 1);
			if (token_zv && FUNC4(token_zv) == IS_ARRAY) {
				FUNC2(FUNC6(FUNC3(token_zv), 0), token);
			}
			break;
		case ON_STOP:
			if (FUNC1(yy_cursor) != FUNC1(yy_limit)) {
				FUNC5(token_stream, T_INLINE_HTML, FUNC1(yy_cursor),
					FUNC1(yy_limit) - FUNC1(yy_cursor), FUNC0(zend_lineno));
			}
			break;
	}
}