#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ auth_method; char* krb_realm; char* usermap; scalar_t__ clientcert; char* pamservice; char* ldapserver; char* ldapport; char* ldapprefix; char* ldapsuffix; char* ldapbasedn; char* ldapbinddn; char* ldapbindpasswd; char* ldapsearchattribute; char* ldapsearchfilter; char* ldapscope; char* radiusservers_s; char* radiussecrets_s; char* radiusidentifiers_s; char* radiusports_s; scalar_t__ ldaptls; scalar_t__ include_realm; } ;
typedef  TYPE_1__ HbaLine ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int MAX_HBA_OPTIONS ; 
 int /*<<< orphan*/  TEXTOID ; 
 scalar_t__ clientCertCA ; 
 scalar_t__ clientCertOff ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int,char) ; 
 char* FUNC3 (char*,char*) ; 
 scalar_t__ uaGSS ; 
 scalar_t__ uaLDAP ; 
 scalar_t__ uaRADIUS ; 
 scalar_t__ uaSSPI ; 

__attribute__((used)) static ArrayType *
FUNC4(HbaLine *hba)
{
	int			noptions;
	Datum		options[MAX_HBA_OPTIONS];

	noptions = 0;

	if (hba->auth_method == uaGSS || hba->auth_method == uaSSPI)
	{
		if (hba->include_realm)
			options[noptions++] =
				FUNC1("include_realm=true");

		if (hba->krb_realm)
			options[noptions++] =
				FUNC1(FUNC3("krb_realm=%s", hba->krb_realm));
	}

	if (hba->usermap)
		options[noptions++] =
			FUNC1(FUNC3("map=%s", hba->usermap));

	if (hba->clientcert != clientCertOff)
		options[noptions++] =
			FUNC1(FUNC3("clientcert=%s", (hba->clientcert == clientCertCA) ? "verify-ca" : "verify-full"));

	if (hba->pamservice)
		options[noptions++] =
			FUNC1(FUNC3("pamservice=%s", hba->pamservice));

	if (hba->auth_method == uaLDAP)
	{
		if (hba->ldapserver)
			options[noptions++] =
				FUNC1(FUNC3("ldapserver=%s", hba->ldapserver));

		if (hba->ldapport)
			options[noptions++] =
				FUNC1(FUNC3("ldapport=%d", hba->ldapport));

		if (hba->ldaptls)
			options[noptions++] =
				FUNC1("ldaptls=true");

		if (hba->ldapprefix)
			options[noptions++] =
				FUNC1(FUNC3("ldapprefix=%s", hba->ldapprefix));

		if (hba->ldapsuffix)
			options[noptions++] =
				FUNC1(FUNC3("ldapsuffix=%s", hba->ldapsuffix));

		if (hba->ldapbasedn)
			options[noptions++] =
				FUNC1(FUNC3("ldapbasedn=%s", hba->ldapbasedn));

		if (hba->ldapbinddn)
			options[noptions++] =
				FUNC1(FUNC3("ldapbinddn=%s", hba->ldapbinddn));

		if (hba->ldapbindpasswd)
			options[noptions++] =
				FUNC1(FUNC3("ldapbindpasswd=%s",
											 hba->ldapbindpasswd));

		if (hba->ldapsearchattribute)
			options[noptions++] =
				FUNC1(FUNC3("ldapsearchattribute=%s",
											 hba->ldapsearchattribute));

		if (hba->ldapsearchfilter)
			options[noptions++] =
				FUNC1(FUNC3("ldapsearchfilter=%s",
											 hba->ldapsearchfilter));

		if (hba->ldapscope)
			options[noptions++] =
				FUNC1(FUNC3("ldapscope=%d", hba->ldapscope));
	}

	if (hba->auth_method == uaRADIUS)
	{
		if (hba->radiusservers_s)
			options[noptions++] =
				FUNC1(FUNC3("radiusservers=%s", hba->radiusservers_s));

		if (hba->radiussecrets_s)
			options[noptions++] =
				FUNC1(FUNC3("radiussecrets=%s", hba->radiussecrets_s));

		if (hba->radiusidentifiers_s)
			options[noptions++] =
				FUNC1(FUNC3("radiusidentifiers=%s", hba->radiusidentifiers_s));

		if (hba->radiusports_s)
			options[noptions++] =
				FUNC1(FUNC3("radiusports=%s", hba->radiusports_s));
	}

	/* If you add more options, consider increasing MAX_HBA_OPTIONS. */
	FUNC0(noptions <= MAX_HBA_OPTIONS);

	if (noptions > 0)
		return FUNC2(options, noptions, TEXTOID, -1, false, 'i');
	else
		return NULL;
}