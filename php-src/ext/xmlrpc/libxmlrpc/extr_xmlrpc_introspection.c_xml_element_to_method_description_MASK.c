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
struct TYPE_6__ {char const* key; char* val; } ;
typedef  TYPE_2__ xml_element_attr ;
struct TYPE_5__ {char const* str; int /*<<< orphan*/  len; } ;
struct TYPE_7__ {char const* name; TYPE_1__ text; int /*<<< orphan*/  children; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_3__ xml_element ;
typedef  int /*<<< orphan*/ * XMLRPC_VALUE ;
typedef  int /*<<< orphan*/  XMLRPC_ERROR ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char const*,char const*,int,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  xi_token_name ; 
 int /*<<< orphan*/  xmlrpc_vector_array ; 
 int /*<<< orphan*/  xmlrpc_vector_mixed ; 
 int /*<<< orphan*/  xmlrpc_vector_struct ; 

XMLRPC_VALUE FUNC9(xml_element* el, XMLRPC_ERROR err) {
   XMLRPC_VALUE xReturn = NULL;

   if(el->name) {
      const char* name = NULL;
      const char* type = NULL;
      const char* basetype = NULL;
      const char* desc = NULL;
      const char* def = NULL;
      int optional = 0;
      xml_element_attr* attr_iter = FUNC0(&el->attrs);

      /* grab element attributes up front to save redundant while loops */
      while(attr_iter) {
         if(!FUNC8(attr_iter->key, "name")) {
            name = attr_iter->val;
         }
         else if(!FUNC8(attr_iter->key, "type")) {
            type = attr_iter->val;
         }
         else if(!FUNC8(attr_iter->key, "basetype")) {
            basetype = attr_iter->val;
         }
         else if(!FUNC8(attr_iter->key, "desc")) {
            desc = attr_iter->val;
         }
         else if(!FUNC8(attr_iter->key, "optional")) {
            if(attr_iter->val && !FUNC8(attr_iter->val, "yes")) {
               optional = 1;
            }
         }
         else if(!FUNC8(attr_iter->key, "default")) {
            def = attr_iter->val;
         }
         attr_iter = FUNC1(&el->attrs);
      }

      /* value and typeDescription behave about the same */
      if(!FUNC8(el->name, "value") || !FUNC8(el->name, "typeDescription")) {
         XMLRPC_VALUE xSubList = NULL;
         const char* ptype = !FUNC8(el->name, "value") ? type : basetype;
         if(ptype) {
            if(FUNC2(&el->children) &&
               (!FUNC8(ptype, "array") || !FUNC8(ptype, "struct") || !FUNC8(ptype, "mixed"))) {
               xSubList = FUNC5("member", xmlrpc_vector_array);

               if(xSubList) {
                  xml_element* elem_iter = FUNC0(&el->children);
                  while(elem_iter) {
                     FUNC3(xSubList,
                                             FUNC9(elem_iter, err));
                     elem_iter = FUNC1(&el->children);
                  }
               }
            }
            xReturn = FUNC7(ptype, name, (desc ? desc : (xSubList ? NULL : el->text.str)), optional, def, xSubList);
         }
      }

      /* these three kids are about equivalent */
      else if(!FUNC8(el->name, "params") ||
              !FUNC8(el->name, "returns") ||
              !FUNC8(el->name, "signature")) {
         if(FUNC2(&el->children)) {
            xml_element* elem_iter = FUNC0(&el->children);
            xReturn = FUNC5(!FUNC8(el->name, "signature") ? NULL : el->name, xmlrpc_vector_struct);


            while(elem_iter) {
               FUNC3(xReturn,
                                       FUNC9(elem_iter, err));
               elem_iter = FUNC1(&el->children);
            }
         }
      }


      else if(!FUNC8(el->name, "methodDescription")) {
         xml_element* elem_iter = FUNC0(&el->children);
         xReturn = FUNC5(NULL, xmlrpc_vector_struct);

         FUNC6(xReturn, xi_token_name, name, 0);

         while(elem_iter) {
            FUNC3(xReturn,
                                    FUNC9(elem_iter, err));
            elem_iter = FUNC1(&el->children);
         }
      }

      /* items are slightly special */
      else if(!FUNC8(el->name, "item")) {
         xReturn = FUNC4(name, el->text.str, el->text.len);
      }

      /* sure.  we'll let any ol element with children through */
      else if(FUNC2(&el->children)) {
         xml_element* elem_iter = FUNC0(&el->children);
         xReturn = FUNC5(el->name, xmlrpc_vector_mixed);

         while(elem_iter) {
            FUNC3(xReturn,
                                    FUNC9(elem_iter, err));
            elem_iter = FUNC1(&el->children);
         }
      }

      /* or anything at all really, so long as its got some text.
       * no reason being all snotty about a spec, right?
       */
      else if(el->name && el->text.len) {
         xReturn = FUNC4(el->name, el->text.str, el->text.len);
      }
   }

   return xReturn;
}