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
typedef  int /*<<< orphan*/  xmlDocPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
typedef  int /*<<< orphan*/  soapHeader ;
typedef  int /*<<< orphan*/  sdlFunctionPtr ;
typedef  int /*<<< orphan*/  cont_len ;

/* Variables and functions */
 scalar_t__ IS_ARRAY ; 
 scalar_t__ IS_STRING ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int SOAP_1_2 ; 
 int FUNC1 (int) ; 
 size_t TRACK_VARS_SERVER ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  http_globals ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 
 int FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC18 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC20(sdlFunctionPtr function, zval* fault, soapHeader *hdr) /* {{{ */
{
	int soap_version;
	xmlChar *buf;
	char cont_len[30];
	int size;
	xmlDocPtr doc_return;
	zval *agent_name;
	int use_http_error_status = 1;

	soap_version = FUNC1(soap_version);

	doc_return = FUNC9(function, NULL, NULL, fault, hdr, soap_version);

	FUNC13(doc_return, &buf, &size);

	if ((FUNC5(FUNC0(http_globals)[TRACK_VARS_SERVER]) == IS_ARRAY || FUNC19(FUNC2("_SERVER"))) &&
		(agent_name = FUNC17(FUNC3(FUNC0(http_globals)[TRACK_VARS_SERVER]), "HTTP_USER_AGENT", sizeof("HTTP_USER_AGENT")-1)) != NULL &&
		FUNC6(agent_name) == IS_STRING) {
		if (FUNC12(FUNC4(agent_name), "Shockwave Flash", sizeof("Shockwave Flash")-1) == 0) {
			use_http_error_status = 0;
		}
	}
	/*
	   Want to return HTTP 500 but apache wants to over write
	   our fault code with their own handling... Figure this out later
	*/
	if (use_http_error_status) {
		FUNC8("HTTP/1.1 500 Internal Service Error", sizeof("HTTP/1.1 500 Internal Service Error")-1, 1);
	}
	if (FUNC18("zlib.output_compression", sizeof("zlib.output_compression"), 0)) {
		FUNC8("Connection: close", sizeof("Connection: close")-1, 1);
	} else {
		FUNC10(cont_len, sizeof(cont_len), "Content-Length: %d", size);
		FUNC8(cont_len, FUNC11(cont_len), 1);
	}
	if (soap_version == SOAP_1_2) {
		FUNC8("Content-Type: application/soap+xml; charset=utf-8", sizeof("Content-Type: application/soap+xml; charset=utf-8")-1, 1);
	} else {
		FUNC8("Content-Type: text/xml; charset=utf-8", sizeof("Content-Type: text/xml; charset=utf-8")-1, 1);
	}

	FUNC7(buf, size);

	FUNC15(doc_return);
	FUNC14(buf);
	FUNC16();
}