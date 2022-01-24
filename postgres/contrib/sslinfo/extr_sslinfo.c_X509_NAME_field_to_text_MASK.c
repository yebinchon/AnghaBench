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
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int NID_undef ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Datum
FUNC10(X509_NAME *name, text *fieldName)
{
	char	   *string_fieldname;
	int			nid,
				index;
	ASN1_STRING *data;

	string_fieldname = FUNC9(fieldName);
	nid = FUNC1(string_fieldname);
	if (nid == NID_undef)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC7("invalid X.509 field name: \"%s\"",
						string_fieldname)));
	FUNC8(string_fieldname);
	index = FUNC4(name, nid, -1);
	if (index < 0)
		return (Datum) 0;
	data = FUNC2(FUNC3(name, index));
	return FUNC0(data);
}