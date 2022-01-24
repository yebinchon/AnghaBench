#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_4__ {int php_executed; int /*<<< orphan*/  return_data; int /*<<< orphan*/  php_function; int /*<<< orphan*/  caller_params; int /*<<< orphan*/  xmlrpc_method; TYPE_1__* server; } ;
typedef  TYPE_2__ xmlrpc_callback_data ;
typedef  int /*<<< orphan*/  XMLRPC_VALUE ;
typedef  int /*<<< orphan*/  XMLRPC_SERVER ;
typedef  int /*<<< orphan*/  XMLRPC_REQUEST ;
struct TYPE_3__ {int /*<<< orphan*/  method_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static XMLRPC_VALUE FUNC11(XMLRPC_SERVER server, XMLRPC_REQUEST xRequest, void* data) /* {{{ */
{
	xmlrpc_callback_data* pData = (xmlrpc_callback_data*)data;
	zval* php_function;
	zval xmlrpc_params;
	zval callback_params[3];

	FUNC10(&pData->xmlrpc_method);
	FUNC10(&pData->return_data);

	/* convert xmlrpc to native php types */
	FUNC5(&pData->xmlrpc_method, FUNC2(xRequest));
	FUNC3(FUNC1(xRequest), &xmlrpc_params);

	/* check if the called method has been previous registered */
	if ((php_function = FUNC9(FUNC6(pData->server->method_map), FUNC7(pData->xmlrpc_method))) != NULL) {
		FUNC4(&pData->php_function, php_function);
	}

	/* setup data hoojum */
	FUNC4(&callback_params[0], &pData->xmlrpc_method);
	FUNC4(&callback_params[1], &xmlrpc_params);
	FUNC4(&callback_params[2], &pData->caller_params);

	/* Use same C function for all methods */

	/* php func prototype: function user_func($method_name, $xmlrpc_params, $user_params) */
	FUNC8(NULL, NULL, &pData->php_function, &pData->return_data, 3, callback_params);

	pData->php_executed = 1;

	FUNC10(&xmlrpc_params);

	return FUNC0(&pData->return_data);
}