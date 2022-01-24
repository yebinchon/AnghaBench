#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
struct TYPE_2__ {void** buf_ptr; int /*<<< orphan*/  line_num; } ;

/* Variables and functions */
 int CH_EOF ; 
 int /*<<< orphan*/  TOK_ELIF ; 
 int /*<<< orphan*/  TOK_ELSE ; 
 int /*<<< orphan*/  TOK_ENDIF ; 
 int /*<<< orphan*/  TOK_ERROR ; 
 int /*<<< orphan*/  TOK_IF ; 
 int /*<<< orphan*/  TOK_IFDEF ; 
 int /*<<< orphan*/  TOK_IFNDEF ; 
 int /*<<< orphan*/  TOK_LINEFEED ; 
 int /*<<< orphan*/  TOK_WARNING ; 
 char ch ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* file ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void** FUNC5 (void**) ; 
 void** FUNC6 (void**) ; 
 void** FUNC7 (void**,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  tok ; 

__attribute__((used)) static void FUNC9(void)
{
	int a, start_of_line, c, in_warn_or_error;
	uint8_t *p;

	p = file->buf_ptr;
	a = 0;
redo_start:
	start_of_line = 1;
	in_warn_or_error = 0;
	while (FUNC8 () == 0) {
redo_no_start:
		c = *p;
		switch (c) {
		case ' ':
		case '\t':
		case '\f':
		case '\v':
		case '\r':
			p++;
			goto redo_no_start;
		case '\n':
			file->line_num++;
			p++;
			goto redo_start;
		case '\\':
			file->buf_ptr = p;
			c = FUNC1 ();
			if (c == CH_EOF) {
				FUNC0 ("#endif");
				return;
			} else if (c == '\\') {
				ch = file->buf_ptr[0];
				FUNC2 ();
			}
			p = file->buf_ptr;
			goto redo_no_start;
		/* skip strings */
		case '\"':
		case '\'':
			if (in_warn_or_error) {
				goto _default;
			}
			p = FUNC7 (p, c, NULL);
			if (p == NULL) {
				return;
			}
			break;
		/* skip comments */
		case '/':
			if (in_warn_or_error) {
				goto _default;
			}
			file->buf_ptr = p;
			ch = *p;
			FUNC3 ();
			p = file->buf_ptr;
			if (ch == '*') {
				p = FUNC5 (p);
			} else if (ch == '/') {
				p = FUNC6 (p);
			}
			break;
		case '#':
			p++;
			if (start_of_line) {
				file->buf_ptr = p;
				FUNC4 ();
				p = file->buf_ptr;
				if (a == 0 &&
				    (tok == TOK_ELSE || tok == TOK_ELIF || tok == TOK_ENDIF)) {
					goto the_end;
				}
				if (tok == TOK_IF || tok == TOK_IFDEF || tok == TOK_IFNDEF) {
					a++;
				} else if (tok == TOK_ENDIF) {
					a--;
				} else if (tok == TOK_ERROR || tok == TOK_WARNING) {
					in_warn_or_error = 1;
				} else if (tok == TOK_LINEFEED) {
					goto redo_start;
				}
			}
			break;
_default:
		default:
			p++;
			break;
		}
		start_of_line = 0;
	}
the_end:
	;
	file->buf_ptr = p;
}