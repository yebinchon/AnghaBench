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
typedef  int Oid ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Const ;

/* Variables and functions */
#define  BPCHAROID 132 
#define  BYTEAOID 131 
 int C_COLLATION_OID ; 
 int DEFAULT_COLLATION_OID ; 
 int /*<<< orphan*/  ERROR ; 
 int InvalidOid ; 
 int NAMEDATALEN ; 
#define  NAMEOID 130 
#define  TEXTOID 129 
#define  VARCHAROID 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 

__attribute__((used)) static Const *
FUNC3(const char *str, Oid datatype)
{
	Datum		conval = FUNC2(str, datatype);
	Oid			collation;
	int			constlen;

	/*
	 * We only need to support a few datatypes here, so hard-wire properties
	 * instead of incurring the expense of catalog lookups.
	 */
	switch (datatype)
	{
		case TEXTOID:
		case VARCHAROID:
		case BPCHAROID:
			collation = DEFAULT_COLLATION_OID;
			constlen = -1;
			break;

		case NAMEOID:
			collation = C_COLLATION_OID;
			constlen = NAMEDATALEN;
			break;

		case BYTEAOID:
			collation = InvalidOid;
			constlen = -1;
			break;

		default:
			FUNC0(ERROR, "unexpected datatype in string_to_const: %u",
				 datatype);
			return NULL;
	}

	return FUNC1(datatype, -1, collation, constlen,
					 conval, false, false);
}