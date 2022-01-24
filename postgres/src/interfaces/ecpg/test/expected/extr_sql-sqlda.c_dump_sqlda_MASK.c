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
struct TYPE_7__ {int sqld; TYPE_2__* sqlvar; } ;
typedef  TYPE_3__ sqlda_t ;
typedef  int /*<<< orphan*/  numeric ;
struct TYPE_5__ {char* data; } ;
struct TYPE_6__ {int* sqlind; int sqltype; char* sqldata; TYPE_1__ sqlname; } ;

/* Variables and functions */
#define  ECPGt_char 133 
#define  ECPGt_double 132 
#define  ECPGt_int 131 
#define  ECPGt_long 130 
#define  ECPGt_long_long 129 
#define  ECPGt_numeric 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(sqlda_t *sqlda)
{
	int	i;

	if (sqlda == NULL)
	{
		FUNC2("dump_sqlda called with NULL sqlda\n");
		return;
	}

	for (i = 0; i < sqlda->sqld; i++)
	{
		if (sqlda->sqlvar[i].sqlind && *(sqlda->sqlvar[i].sqlind) == -1)
			FUNC2("name sqlda descriptor: '%s' value NULL'\n", sqlda->sqlvar[i].sqlname.data);
		else
		switch (sqlda->sqlvar[i].sqltype)
		{
		case ECPGt_char:
			FUNC2("name sqlda descriptor: '%s' value '%s'\n", sqlda->sqlvar[i].sqlname.data, sqlda->sqlvar[i].sqldata);
			break;
		case ECPGt_int:
			FUNC2("name sqlda descriptor: '%s' value %d\n", sqlda->sqlvar[i].sqlname.data, *(int *)sqlda->sqlvar[i].sqldata);
			break;
		case ECPGt_long:
			FUNC2("name sqlda descriptor: '%s' value %ld\n", sqlda->sqlvar[i].sqlname.data, *(long int *)sqlda->sqlvar[i].sqldata);
			break;
		case ECPGt_long_long:
			FUNC2(
#ifdef _WIN32
				"name sqlda descriptor: '%s' value %I64d\n",
#else
				"name sqlda descriptor: '%s' value %lld\n",
#endif
				sqlda->sqlvar[i].sqlname.data, *(long long int *)sqlda->sqlvar[i].sqldata);
			break;
		case ECPGt_double:
			FUNC2("name sqlda descriptor: '%s' value %f\n", sqlda->sqlvar[i].sqlname.data, *(double *)sqlda->sqlvar[i].sqldata);
			break;
		case ECPGt_numeric:
			{
				char    *val;

				val = FUNC1((numeric*)sqlda->sqlvar[i].sqldata, -1);
				FUNC2("name sqlda descriptor: '%s' value NUMERIC '%s'\n", sqlda->sqlvar[i].sqlname.data, val);
				FUNC0(val);
				break;
			}
		}
	}
}