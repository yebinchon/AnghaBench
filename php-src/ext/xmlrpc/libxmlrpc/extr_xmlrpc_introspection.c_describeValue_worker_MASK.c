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
typedef  int /*<<< orphan*/ * XMLRPC_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xi_token_default ; 
 int /*<<< orphan*/  xi_token_description ; 
 int /*<<< orphan*/  xi_token_name ; 
 int /*<<< orphan*/  xi_token_optional ; 
 int /*<<< orphan*/  xi_token_type ; 
 int /*<<< orphan*/  xmlrpc_vector_struct ; 

__attribute__((used)) static XMLRPC_VALUE FUNC4(const char* type, const char* id, const char* desc, int optional, const char* default_val, XMLRPC_VALUE sub_params) {
   XMLRPC_VALUE xParam = NULL;
   if(id || desc) {
      xParam = FUNC1(NULL, xmlrpc_vector_struct);
      FUNC3(xParam, xi_token_name, id, 0);
      FUNC3(xParam, xi_token_type, type, 0);
      FUNC3(xParam, xi_token_description, desc, 0);
      if(optional != 2) {
         FUNC2(xParam, xi_token_optional, optional);
      }
      if(optional == 1 && default_val) {
         FUNC3(xParam, xi_token_default, default_val, 0);
      }
      FUNC0(xParam, sub_params);
   }
   return xParam;
}