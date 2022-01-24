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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {char const* name; int content_type; struct TYPE_4__* next; } ;
typedef  TYPE_1__ coap_luser_entry ;

/* Variables and functions */
 int /*<<< orphan*/  COAP_CONTENTTYPE_TEXT_PLAIN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 TYPE_1__* function_entry ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 TYPE_1__* variable_entry ; 

__attribute__((used)) static int FUNC6( lua_State* L, const char* mt, int isvar )
{
  size_t l;
  const char *name = FUNC2( L, 2, &l );
  int content_type = FUNC4(L, 3, COAP_CONTENTTYPE_TEXT_PLAIN);
  if (name == NULL)
    return FUNC3( L, "name must be set." );

  coap_luser_entry *h = NULL;
  // if(lua_isstring(L, 3))
  if(isvar)
    h = variable_entry;
  else
    h = function_entry;

  while(NULL!=h->next){  // goto the end of the list
    if(h->name!= NULL && FUNC5(h->name, name)==0)  // key exist, override it
      break;
    h = h->next;
  }

  if(h->name==NULL || FUNC5(h->name, name)!=0){   // not exists. make a new one.
    h->next = (coap_luser_entry *)FUNC1(1,sizeof(coap_luser_entry));
    h = h->next;
    if(h == NULL)
      return FUNC3(L, "not enough memory");
    h->next = NULL;
    h->name = NULL;
  }

  h->name = name;
  h->content_type = content_type;

  FUNC0("coap_regist is called.\n");
  return 0;
}