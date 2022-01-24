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
typedef  int /*<<< orphan*/  X509_NAME_ENTRY ;
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 int ASN1_STRFLGS_ESC_MSB ; 
 int ASN1_STRFLGS_RFC2253 ; 
 int ASN1_STRFLGS_UTF8_CONVERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  BIO_CLOSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC8 (int) ; 
 char* FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PG_UTF8 ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 char* FUNC16 (char*,size_t,int /*<<< orphan*/ ) ; 
 char* FUNC17 (char*) ; 

__attribute__((used)) static char *
FUNC18(X509_NAME *name)
{
	BIO		   *membuf = FUNC3(FUNC5());
	int			i,
				nid,
				count = FUNC13(name);
	X509_NAME_ENTRY *e;
	ASN1_STRING *v;
	const char *field_name;
	size_t		size;
	char		nullterm;
	char	   *sp;
	char	   *dp;
	char	   *result;

	(void) FUNC6(membuf, BIO_CLOSE);
	for (i = 0; i < count; i++)
	{
		e = FUNC14(name, i);
		nid = FUNC10(FUNC12(e));
		v = FUNC11(e);
		field_name = FUNC9(nid);
		if (!field_name)
			field_name = FUNC8(nid);
		FUNC4(membuf, "/%s=", field_name);
		FUNC0(membuf, v,
							 ((ASN1_STRFLGS_RFC2253 & ~ASN1_STRFLGS_ESC_MSB)
							  | ASN1_STRFLGS_UTF8_CONVERT));
	}

	/* ensure null termination of the BIO's content */
	nullterm = '\0';
	FUNC7(membuf, &nullterm, 1);
	size = FUNC2(membuf, &sp);
	dp = FUNC16(sp, size - 1, PG_UTF8);

	result = FUNC17(dp);
	if (dp != sp)
		FUNC15(dp);
	FUNC1(membuf);

	return result;
}