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
typedef  int zend_bool ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  NID_commonName ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static zend_bool FUNC5(X509 *peer, const char *subject_name) /* {{{ */
{
	char buf[1024];
	X509_NAME *cert_name;
	zend_bool is_match = 0;
	int cert_name_len;

	cert_name = FUNC1(peer);
	cert_name_len = FUNC0(cert_name, NID_commonName, buf, sizeof(buf));

	if (cert_name_len == -1) {
		FUNC2(NULL, E_WARNING, "Unable to locate peer certificate CN");
	} else if ((size_t)cert_name_len != FUNC4(buf)) {
		FUNC2(NULL, E_WARNING, "Peer certificate CN=`%.*s' is malformed", cert_name_len, buf);
	} else if (FUNC3(subject_name, buf)) {
		is_match = 1;
	} else {
		FUNC2(NULL, E_WARNING,
			"Peer certificate CN=`%.*s' did not match expected CN=`%s'",
			cert_name_len, buf, subject_name);
	}

	return is_match;
}