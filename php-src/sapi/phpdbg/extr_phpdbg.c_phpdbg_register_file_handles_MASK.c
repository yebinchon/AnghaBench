#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* zval ;
struct TYPE_8__ {void* name; void* value; } ;
typedef  TYPE_1__ zend_constant ;
typedef  int /*<<< orphan*/  php_stream_context ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ php_stream ;

/* Variables and functions */
 int /*<<< orphan*/  CONST_CS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PHP_STREAM_FLAG_NO_CLOSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,void**) ; 
 int /*<<< orphan*/  zend_constants ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(void) /* {{{ */
{
	zval zin, zout, zerr;
	php_stream *s_in, *s_out, *s_err;
	php_stream_context *sc_in=NULL, *sc_out=NULL, *sc_err=NULL;
	zend_constant ic, oc, ec;

	s_in  = FUNC4("php://stdin",  "rb", 0, NULL, sc_in);
	s_out = FUNC4("php://stdout", "wb", 0, NULL, sc_out);
	s_err = FUNC4("php://stderr", "wb", 0, NULL, sc_err);

	if (s_in==NULL || s_out==NULL || s_err==NULL) {
		if (s_in) FUNC3(s_in);
		if (s_out) FUNC3(s_out);
		if (s_err) FUNC3(s_err);
		return;
	}

#if PHP_DEBUG
	/* do not close stdout and stderr */
	s_out->flags |= PHP_STREAM_FLAG_NO_CLOSE;
	s_err->flags |= PHP_STREAM_FLAG_NO_CLOSE;
#endif

	FUNC5(s_in,  &zin);
	FUNC5(s_out, &zout);
	FUNC5(s_err, &zerr);

	ic.value = zin;
	FUNC1(&ic, CONST_CS, 0);
	ic.name = FUNC8(FUNC2("STDIN"), 0);
	FUNC6(FUNC0(zend_constants), ic.name);
	FUNC7(&ic);

	oc.value = zout;
	FUNC1(&oc, CONST_CS, 0);
	oc.name = FUNC8(FUNC2("STDOUT"), 0);
	FUNC6(FUNC0(zend_constants), oc.name);
	FUNC7(&oc);

	ec.value = zerr;
	FUNC1(&ec, CONST_CS, 0);
	ec.name = FUNC8(FUNC2("STDERR"), 0);
	FUNC6(FUNC0(zend_constants), ec.name);
	FUNC7(&ec);
}