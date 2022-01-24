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
typedef  int /*<<< orphan*/  zval ;

/* Variables and functions */
#define  DBTDS_2_0 139 
#define  DBTDS_3_4 138 
#define  DBTDS_4_0 137 
#define  DBTDS_4_2 136 
#define  DBTDS_4_6 135 
#define  DBTDS_4_9_5 134 
#define  DBTDS_5_0 133 
#define  DBTDS_7_0 132 
#define  DBTDS_7_1 131 
#define  DBTDS_7_2 130 
#define  DBTDS_7_3 129 
#define  DBTDS_7_4 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC2(zval *return_value, int tds)
{
	switch (tds) {
		case DBTDS_2_0:
			FUNC1(return_value, "2.0");
			break;

		case DBTDS_3_4:
			FUNC1(return_value, "3.4");
			break;

		case DBTDS_4_0:
			FUNC1(return_value, "4.0");
			break;

		case DBTDS_4_2:
			FUNC1(return_value, "4.2");
			break;

		case DBTDS_4_6:
			FUNC1(return_value, "4.6");
			break;

		case DBTDS_4_9_5:
			FUNC1(return_value, "4.9.5");
			break;

		case DBTDS_5_0:
			FUNC1(return_value, "5.0");
			break;

#ifdef DBTDS_7_0
		case DBTDS_7_0:
			FUNC1(return_value, "7.0");
			break;
#endif

#ifdef DBTDS_7_1
		case DBTDS_7_1:
			FUNC1(return_value, "7.1");
			break;
#endif

#ifdef DBTDS_7_2
		case DBTDS_7_2:
			FUNC1(return_value, "7.2");
			break;
#endif

#ifdef DBTDS_7_3
		case DBTDS_7_3:
			FUNC1(return_value, "7.3");
			break;
#endif

#ifdef DBTDS_7_4
		case DBTDS_7_4:
			FUNC1(return_value, "7.4");
			break;
#endif

		default:
			FUNC0(return_value);
			break;
	}
}