#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  errorMessage; } ;
typedef  TYPE_1__ PGconn ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 unsigned char* FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (TYPE_1__*,char const*,int,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(PGconn *conn, ASN1_STRING *name_entry,
												  char **store_name)
{
	int			len;
	const unsigned char *namedata;

	/* Should not happen... */
	if (name_entry == NULL)
	{
		FUNC5(&conn->errorMessage,
						  FUNC3("SSL certificate's name entry is missing\n"));
		return -1;
	}

	/*
	 * GEN_DNS can be only IA5String, equivalent to US ASCII.
	 */
#ifdef HAVE_ASN1_STRING_GET0_DATA
	namedata = ASN1_STRING_get0_data(name_entry);
#else
	namedata = FUNC0(name_entry);
#endif
	len = FUNC2(name_entry);

	/* OK to cast from unsigned to plain char, since it's all ASCII. */
	return FUNC4(conn, (const char *) namedata, len, store_name);
}