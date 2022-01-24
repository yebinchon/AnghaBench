#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  double float8 ;
struct TYPE_3__ {int /*<<< orphan*/  key; } ;
typedef  int StrategyNumber ;
typedef  TYPE_1__ GISTENTRY ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int GeoStrategyNumberOffset ; 
#define  PointStrategyNumberGroup 128 
 double FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static float8
FUNC4(GISTENTRY *entry, Datum query, StrategyNumber strategy)
{
	float8		distance;
	StrategyNumber strategyGroup = strategy / GeoStrategyNumberOffset;

	switch (strategyGroup)
	{
		case PointStrategyNumberGroup:
			distance = FUNC2(false,
									   FUNC0(entry->key),
									   FUNC1(query));
			break;
		default:
			FUNC3(ERROR, "unrecognized strategy number: %d", strategy);
			distance = 0.0;		/* keep compiler quiet */
	}

	return distance;
}