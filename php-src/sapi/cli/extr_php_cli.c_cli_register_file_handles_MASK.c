#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {void* name; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ zend_constant ;
typedef  int /*<<< orphan*/  php_stream_context ;
struct TYPE_10__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ php_stream ;

/* Variables and functions */
 int /*<<< orphan*/  CONST_CS ; 
 int /*<<< orphan*/  PHP_STREAM_FLAG_NO_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* s_in_process ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 void* FUNC5 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void) /* {{{ */
{
	php_stream *s_in, *s_out, *s_err;
	php_stream_context *sc_in=NULL, *sc_out=NULL, *sc_err=NULL;
	zend_constant ic, oc, ec;

	s_in  = FUNC2("php://stdin",  "rb", 0, NULL, sc_in);
	s_out = FUNC2("php://stdout", "wb", 0, NULL, sc_out);
	s_err = FUNC2("php://stderr", "wb", 0, NULL, sc_err);

	if (s_in==NULL || s_out==NULL || s_err==NULL) {
		if (s_in) FUNC1(s_in);
		if (s_out) FUNC1(s_out);
		if (s_err) FUNC1(s_err);
		return;
	}

#if PHP_DEBUG
	/* do not close stdout and stderr */
	s_out->flags |= PHP_STREAM_FLAG_NO_CLOSE;
	s_err->flags |= PHP_STREAM_FLAG_NO_CLOSE;
#endif

	s_in_process = s_in;

	FUNC3(s_in,  &ic.value);
	FUNC3(s_out, &oc.value);
	FUNC3(s_err, &ec.value);

	FUNC0(&ic, CONST_CS, 0);
	ic.name = FUNC5("STDIN", sizeof("STDIN")-1, 0);
	FUNC4(&ic);

	FUNC0(&oc, CONST_CS, 0);
	oc.name = FUNC5("STDOUT", sizeof("STDOUT")-1, 0);
	FUNC4(&oc);

	FUNC0(&ec, CONST_CS, 0);
	ec.name = FUNC5("STDERR", sizeof("STDERR")-1, 0);
	FUNC4(&ec);
}