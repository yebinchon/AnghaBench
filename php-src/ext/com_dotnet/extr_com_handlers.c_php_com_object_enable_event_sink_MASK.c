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
struct TYPE_3__ {int /*<<< orphan*/  sink_cookie; scalar_t__ sink_dispatch; int /*<<< orphan*/  sink_id; int /*<<< orphan*/  v; } ;
typedef  TYPE_1__ php_com_dotnet_object ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IConnectionPointContainer ;
typedef  int /*<<< orphan*/  IConnectionPoint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IConnectionPointContainer ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(php_com_dotnet_object *obj, int enable)
{
	if (obj->sink_dispatch) {
		IConnectionPointContainer *cont;
		IConnectionPoint *point;

		if (FUNC6(FUNC5(FUNC7(&obj->v),
				&IID_IConnectionPointContainer, (void**)&cont))) {

			if (FUNC6(FUNC0(cont,
					&obj->sink_id, &point))) {

				if (enable) {
					FUNC2(point, (IUnknown*)obj->sink_dispatch, &obj->sink_cookie);
				} else {
					FUNC4(point, obj->sink_cookie);
				}
				FUNC3(point);
			}
			FUNC1(cont);
		}
	}
}