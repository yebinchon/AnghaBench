#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int value_or_type; int /*<<< orphan*/ * name_or_val; } ;
struct TYPE_11__ {int value; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ SVal_LF_USHORT ;
typedef  TYPE_1__ SVal_LF_UQUADWORD ;
typedef  TYPE_1__ SVal_LF_ULONG ;
typedef  TYPE_1__ SVal_LF_SHORT ;
typedef  TYPE_1__ SVal_LF_QUADWORD ;
typedef  TYPE_1__ SVal_LF_LONG ;
typedef  TYPE_1__ SVal_LF_CHAR ;
typedef  TYPE_8__ SVal ;
typedef  int /*<<< orphan*/  SCString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,int,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,int,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,int,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int,int,unsigned char*,int /*<<< orphan*/ ) ; 
#define  eLF_CHAR 134 
#define  eLF_LONG 133 
#define  eLF_QUADWORD 132 
#define  eLF_SHORT 131 
#define  eLF_ULONG 130 
#define  eLF_UQUADWORD 129 
#define  eLF_USHORT 128 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  st16 ; 
 int /*<<< orphan*/  st32 ; 
 int /*<<< orphan*/  st64 ; 
 int /*<<< orphan*/  st8 ; 
 int /*<<< orphan*/  ut16 ; 
 int /*<<< orphan*/  ut32 ; 

__attribute__((used)) static int FUNC8(SVal *val, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len)
{
	val->name_or_val = 0;

	FUNC1(*read_bytes, len, val->value_or_type, leaf_data, ut16);

	if (val->value_or_type < eLF_CHAR) {
		SCString *sctr = (SCString *) FUNC4 (sizeof (SCString));
		if (!sctr) {
			return 0;
		}
		FUNC6 (sctr, leaf_data, read_bytes, len);
		val->name_or_val = sctr;
	} else {
		switch (val->value_or_type) {
		case eLF_UQUADWORD:
		{
		    SVal_LF_UQUADWORD lf_uqword;
		    FUNC3(*read_bytes, len, lf_uqword.value, leaf_data, st64);
		    FUNC6(&lf_uqword.name, leaf_data, read_bytes, len);
		    val->name_or_val = FUNC4(sizeof(SVal_LF_UQUADWORD));
		    if (!val->name_or_val) {
			    break;
		    }
		    FUNC5(val->name_or_val, &lf_uqword, sizeof(SVal_LF_UQUADWORD));
		    break;
		}
		case eLF_QUADWORD:
		{
			SVal_LF_QUADWORD lf_qword;
			FUNC3(*read_bytes, len, lf_qword.value, leaf_data, st64);
			FUNC6 (&lf_qword.name, leaf_data, read_bytes, len);
			val->name_or_val = FUNC4 (sizeof (SVal_LF_QUADWORD));
			if (!val->name_or_val) {
				break;
			}
			FUNC5 (val->name_or_val, &lf_qword, sizeof (SVal_LF_QUADWORD));
			break;
		}
		case eLF_CHAR:
		{
			SVal_LF_CHAR lf_char;
			FUNC0(*read_bytes, len, lf_char.value, leaf_data, st8);
			FUNC6 (&lf_char.name, leaf_data, read_bytes, len);
			val->name_or_val = FUNC4 (sizeof (SVal_LF_CHAR));
			if (!val->name_or_val) {
				break;
			}
			FUNC5 (val->name_or_val, &lf_char, sizeof (SVal_LF_CHAR));
			break;
		}
		case eLF_LONG:
		{
			SVal_LF_LONG lf_long;
			lf_long.value = 0;
			// long = 4 bytes for Windows, but not in Linux x64,
			// so here is using int instead of long when
			// reading long value
			FUNC2(*read_bytes, len, lf_long.value, leaf_data, st32);
			FUNC6 (&lf_long.name, leaf_data, read_bytes, len);
			val->name_or_val = FUNC4 (sizeof (SVal_LF_LONG));
			if (!val->name_or_val) {
				break;
			}
			FUNC5 (val->name_or_val, &lf_long, sizeof (SVal_LF_LONG));
			break;
		}
		case eLF_ULONG:
		{
			SVal_LF_ULONG lf_ulong;
			lf_ulong.value = 0;
			// unsigned long = 4 bytes for Windows, but not in Linux x64,
			// so here is using unsigned int instead of unsigned long when
			// reading ulong value
			FUNC2(*read_bytes, len, lf_ulong.value, leaf_data, ut32);
			FUNC6 (&lf_ulong.name, leaf_data, read_bytes, len);
			val->name_or_val = FUNC4 (sizeof (SVal_LF_ULONG));
			if (!val->name_or_val) {
				break;
			}
			FUNC5(val->name_or_val, &lf_ulong, sizeof (SVal_LF_ULONG));
			break;
		}
		case eLF_SHORT:
		{
			SVal_LF_SHORT lf_short;
			FUNC1(*read_bytes, len, lf_short.value, leaf_data, st16);
			FUNC6 (&lf_short.name, leaf_data, read_bytes, len);
			val->name_or_val = FUNC4 (sizeof (SVal_LF_SHORT));
			if (!val->name_or_val) {
				break;
			}
			FUNC5 (val->name_or_val, &lf_short, sizeof (SVal_LF_SHORT));
			break;
		}
		case eLF_USHORT:
		{
			SVal_LF_USHORT lf_ushort;
			FUNC1(*read_bytes, len, lf_ushort.value, leaf_data, ut16);
			FUNC6 (&lf_ushort.name, leaf_data, read_bytes, len);
			val->name_or_val = FUNC4 (sizeof(SVal_LF_USHORT));
			if (!val->name_or_val) {
				break;
			}
			FUNC5(val->name_or_val, &lf_ushort, sizeof (SVal_LF_USHORT));
			break;
		}
		default:
			FUNC7 ("parse_sval: Skipping unsupported type (%d)\n", val->value_or_type);
			return 0;
		}
	}

	return 1;
}