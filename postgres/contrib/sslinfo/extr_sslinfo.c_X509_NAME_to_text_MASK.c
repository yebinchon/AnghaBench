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
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  X509_NAME_ENTRY ;
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 int ASN1_STRFLGS_ESC_MSB ; 
 int ASN1_STRFLGS_RFC2253 ; 
 int ASN1_STRFLGS_UTF8_CONVERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  BIO_CLOSE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int NID_undef ; 
 char* FUNC8 (int) ; 
 char* FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PG_UTF8 ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 char* FUNC22 (char*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Datum
FUNC23(X509_NAME *name)
{
	BIO		   *membuf = FUNC3(FUNC5());
	int			i,
				nid,
				count = FUNC14(name);
	X509_NAME_ENTRY *e;
	ASN1_STRING *v;
	const char *field_name;
	size_t		size;
	char		nullterm;
	char	   *sp;
	char	   *dp;
	text	   *result;

	if (membuf == NULL)
		FUNC18(ERROR,
				(FUNC19(ERRCODE_OUT_OF_MEMORY),
				 FUNC20("could not create OpenSSL BIO structure")));

	(void) FUNC6(membuf, BIO_CLOSE);
	for (i = 0; i < count; i++)
	{
		e = FUNC15(name, i);
		nid = FUNC10(FUNC13(e));
		if (nid == NID_undef)
			FUNC18(ERROR,
					(FUNC19(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC20("could not get NID for ASN1_OBJECT object")));
		v = FUNC12(e);
		field_name = FUNC9(nid);
		if (field_name == NULL)
			field_name = FUNC8(nid);
		if (field_name == NULL)
			FUNC18(ERROR,
					(FUNC19(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC20("could not convert NID %d to an ASN1_OBJECT structure", nid)));
		FUNC4(membuf, "/%s=", field_name);
		FUNC0(membuf, v,
							 ((ASN1_STRFLGS_RFC2253 & ~ASN1_STRFLGS_ESC_MSB)
							  | ASN1_STRFLGS_UTF8_CONVERT));
	}

	/* ensure null termination of the BIO's content */
	nullterm = '\0';
	FUNC7(membuf, &nullterm, 1);
	size = FUNC2(membuf, &sp);
	dp = FUNC22(sp, size - 1, PG_UTF8);
	result = FUNC16(dp);
	if (dp != sp)
		FUNC21(dp);
	if (FUNC1(membuf) != 1)
		FUNC17(ERROR, "could not free OpenSSL BIO structure");

	FUNC11(result);
}