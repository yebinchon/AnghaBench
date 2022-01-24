#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int zend_bool ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_6__ {TYPE_1__* iPAddress; int /*<<< orphan*/  dNSName; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ d; } ;
struct TYPE_5__ {int length; int* data; } ;
typedef  int /*<<< orphan*/  GENERAL_NAMES ;
typedef  TYPE_3__ GENERAL_NAME ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERAL_NAME_free ; 
 scalar_t__ GEN_DNS ; 
 scalar_t__ GEN_IPADD ; 
 int /*<<< orphan*/  NID_subject_alt_name ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int,int,int,int) ; 
 scalar_t__ FUNC9 (char const*,char const*) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 size_t FUNC11 (char const*) ; 

__attribute__((used)) static zend_bool FUNC12(X509 *peer, const char *subject_name) /* {{{ */
{
	int i, len;
	unsigned char *cert_name = NULL;
	char ipbuffer[64];

	GENERAL_NAMES *alt_names = FUNC3(peer, NID_subject_alt_name, 0, 0);
	int alt_name_count = FUNC5(alt_names);

	for (i = 0; i < alt_name_count; i++) {
		GENERAL_NAME *san = FUNC7(alt_names, i);

		if (san->type == GEN_DNS) {
			FUNC1(&cert_name, san->d.dNSName);
			if ((size_t)FUNC0(san->d.dNSName) != FUNC11((const char*)cert_name)) {
				FUNC2(cert_name);
				/* prevent null-byte poisoning*/
				continue;
			}

			/* accommodate valid FQDN entries ending in "." */
			len = FUNC11((const char*)cert_name);
			if (len && FUNC10((const char *)&cert_name[len-1], ".") == 0) {
				cert_name[len-1] = '\0';
			}

			if (FUNC4(subject_name, (const char *)cert_name)) {
				FUNC2(cert_name);
				FUNC6(alt_names, GENERAL_NAME_free);

				return 1;
			}
			FUNC2(cert_name);
		} else if (san->type == GEN_IPADD) {
			if (san->d.iPAddress->length == 4) {
				FUNC8(ipbuffer, "%d.%d.%d.%d",
					san->d.iPAddress->data[0],
					san->d.iPAddress->data[1],
					san->d.iPAddress->data[2],
					san->d.iPAddress->data[3]
				);
				if (FUNC9(subject_name, (const char*)ipbuffer) == 0) {
					FUNC6(alt_names, GENERAL_NAME_free);

					return 1;
				}
			}
			/* No, we aren't bothering to check IPv6 addresses. Why?
			 * Because IP SAN names are officially deprecated and are
			 * not allowed by CAs starting in 2015. Deal with it.
			 */
		}
	}

	FUNC6(alt_names, GENERAL_NAME_free);

	return 0;
}