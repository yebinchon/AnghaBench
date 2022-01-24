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
typedef  int /*<<< orphan*/  timestamp ;
struct TYPE_4__ {long buf; long digits; long ndigits; } ;
typedef  TYPE_1__ numeric ;
typedef  int /*<<< orphan*/  interval ;
typedef  int /*<<< orphan*/  int64 ;
typedef  enum ECPGttype { ____Placeholder_ECPGttype } ECPGttype ;
typedef  enum COMPAT_MODE { ____Placeholder_COMPAT_MODE } COMPAT_MODE ;
typedef  int /*<<< orphan*/  decimal ;
typedef  int /*<<< orphan*/  date ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  NumericDigit ;

/* Variables and functions */
#define  ECPGt_bool 146 
#define  ECPGt_char 145 
#define  ECPGt_date 144 
#define  ECPGt_decimal 143 
#define  ECPGt_double 142 
#define  ECPGt_float 141 
#define  ECPGt_int 140 
#define  ECPGt_interval 139 
#define  ECPGt_long 138 
#define  ECPGt_long_long 137 
#define  ECPGt_numeric 136 
#define  ECPGt_short 135 
#define  ECPGt_string 134 
#define  ECPGt_timestamp 133 
#define  ECPGt_unsigned_char 132 
#define  ECPGt_unsigned_int 131 
#define  ECPGt_unsigned_long 130 
#define  ECPGt_unsigned_long_long 129 
#define  ECPGt_unsigned_short 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int,int) ; 
 char* FUNC4 (int /*<<< orphan*/  const*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (long,int,long,long*,long*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static long
FUNC9(const PGresult *res, int row, enum COMPAT_MODE compat, long offset)
{
	int			sqld = FUNC5(res);
	int			i;
	long		next_offset;

	/* Add space for the field values */
	for (i = 0; i < sqld; i++)
	{
		enum ECPGttype type = FUNC7(FUNC2(res, i), compat);

		switch (type)
		{
			case ECPGt_short:
			case ECPGt_unsigned_short:
				FUNC6(offset, sizeof(short), sizeof(short), &offset, &next_offset);
				break;
			case ECPGt_int:
			case ECPGt_unsigned_int:
				FUNC6(offset, sizeof(int), sizeof(int), &offset, &next_offset);
				break;
			case ECPGt_long:
			case ECPGt_unsigned_long:
				FUNC6(offset, sizeof(long), sizeof(long), &offset, &next_offset);
				break;
			case ECPGt_long_long:
			case ECPGt_unsigned_long_long:
				FUNC6(offset, sizeof(long long), sizeof(long long), &offset, &next_offset);
				break;
			case ECPGt_bool:
				FUNC6(offset, sizeof(bool), sizeof(bool), &offset, &next_offset);
				break;
			case ECPGt_float:
				FUNC6(offset, sizeof(float), sizeof(float), &offset, &next_offset);
				break;
			case ECPGt_double:
				FUNC6(offset, sizeof(double), sizeof(double), &offset, &next_offset);
				break;
			case ECPGt_decimal:
				FUNC6(offset, sizeof(int), sizeof(decimal), &offset, &next_offset);
				break;
			case ECPGt_numeric:

				/*
				 * We align the numeric struct to allow it to store a pointer,
				 * while the digits array is aligned to int (which seems like
				 * overkill, but let's keep compatibility here).
				 *
				 * Unfortunately we need to deconstruct the value twice to
				 * find out the digits array's size and then later fill it.
				 */
				FUNC6(offset, sizeof(NumericDigit *), sizeof(numeric), &offset, &next_offset);
				if (!FUNC3(res, row, i))
				{
					char	   *val = FUNC4(res, row, i);
					numeric    *num;

					num = FUNC1(val, NULL);
					if (!num)
						break;
					if (num->buf)
						FUNC6(next_offset, sizeof(int), num->digits - num->buf + num->ndigits, &offset, &next_offset);
					FUNC0(num);
				}
				break;
			case ECPGt_date:
				FUNC6(offset, sizeof(date), sizeof(date), &offset, &next_offset);
				break;
			case ECPGt_timestamp:
				FUNC6(offset, sizeof(int64), sizeof(timestamp), &offset, &next_offset);
				break;
			case ECPGt_interval:
				FUNC6(offset, sizeof(int64), sizeof(interval), &offset, &next_offset);
				break;
			case ECPGt_char:
			case ECPGt_unsigned_char:
			case ECPGt_string:
			default:
				{
					long		datalen = FUNC8(FUNC4(res, row, i)) + 1;

					FUNC6(offset, sizeof(int), datalen, &offset, &next_offset);
					break;
				}
		}
		offset = next_offset;
	}
	return offset;
}