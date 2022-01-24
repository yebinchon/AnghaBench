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
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PG_UTF8 ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 char* FUNC14 (char*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Datum
FUNC15(ASN1_STRING *str)
{
	BIO		   *membuf;
	size_t		size;
	char		nullterm;
	char	   *sp;
	char	   *dp;
	text	   *result;

	membuf = FUNC3(FUNC4());
	if (membuf == NULL)
		FUNC10(ERROR,
				(FUNC11(ERRCODE_OUT_OF_MEMORY),
				 FUNC12("could not create OpenSSL BIO structure")));
	(void) FUNC5(membuf, BIO_CLOSE);
	FUNC0(membuf, str,
						 ((ASN1_STRFLGS_RFC2253 & ~ASN1_STRFLGS_ESC_MSB)
						  | ASN1_STRFLGS_UTF8_CONVERT));
	/* ensure null termination of the BIO's content */
	nullterm = '\0';
	FUNC6(membuf, &nullterm, 1);
	size = FUNC2(membuf, &sp);
	dp = FUNC14(sp, size - 1, PG_UTF8);
	result = FUNC8(dp);
	if (dp != sp)
		FUNC13(dp);
	if (FUNC1(membuf) != 1)
		FUNC9(ERROR, "could not free OpenSSL BIO structure");

	FUNC7(result);
}