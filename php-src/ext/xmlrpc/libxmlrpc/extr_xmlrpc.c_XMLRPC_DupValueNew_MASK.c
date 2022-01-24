#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  q_iter ;
typedef  TYPE_4__* XMLRPC_VALUE ;
struct TYPE_18__ {int /*<<< orphan*/  len; int /*<<< orphan*/  str; } ;
struct TYPE_17__ {int /*<<< orphan*/  len; int /*<<< orphan*/  str; } ;
struct TYPE_20__ {int type; TYPE_3__* v; int /*<<< orphan*/  d; int /*<<< orphan*/  i; TYPE_2__ str; TYPE_1__ id; } ;
struct TYPE_19__ {int /*<<< orphan*/  type; int /*<<< orphan*/  q; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_4__*) ; 
 TYPE_4__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  xmlrpc_base64 134 
#define  xmlrpc_boolean 133 
#define  xmlrpc_datetime 132 
#define  xmlrpc_double 131 
#define  xmlrpc_int 130 
#define  xmlrpc_string 129 
#define  xmlrpc_vector 128 

XMLRPC_VALUE FUNC11 (XMLRPC_VALUE xSource) {
	XMLRPC_VALUE xReturn = NULL;
	if (xSource) {
		xReturn = FUNC4 ();
		if (xSource->id.len) {
			FUNC8 (xReturn, xSource->id.str, xSource->id.len);
		}

		switch (xSource->type) {
		case xmlrpc_int:
		case xmlrpc_boolean:
			FUNC9 (xReturn, xSource->i);
			break;
		case xmlrpc_string:
		case xmlrpc_base64:
			FUNC10 (xReturn, xSource->str.str, xSource->str.len);
			break;
		case xmlrpc_datetime:
			FUNC6 (xReturn, xSource->i);
			break;
		case xmlrpc_double:
			FUNC7 (xReturn, xSource->d);
			break;
		case xmlrpc_vector:
			{
				q_iter qi = FUNC1 (xSource->v->q);
				FUNC5 (xReturn, xSource->v->type);

				while (qi) {
					XMLRPC_VALUE xIter = FUNC0 (qi);
					FUNC3 (xReturn, FUNC11 (xIter));
					qi = FUNC2 (qi);
				}
			}
			break;
		default:
			break;
		}
	}
	return xReturn;
}