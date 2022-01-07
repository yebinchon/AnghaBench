
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {char const* name; int content_type; struct TYPE_4__* next; } ;
typedef TYPE_1__ coap_luser_entry ;


 int COAP_CONTENTTYPE_TEXT_PLAIN ;
 int NODE_DBG (char*) ;
 scalar_t__ calloc (int,int) ;
 TYPE_1__* function_entry ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 int luaL_optint (int *,int,int ) ;
 scalar_t__ strcmp (char const*,char const*) ;
 TYPE_1__* variable_entry ;

__attribute__((used)) static int coap_regist( lua_State* L, const char* mt, int isvar )
{
  size_t l;
  const char *name = luaL_checklstring( L, 2, &l );
  int content_type = luaL_optint(L, 3, COAP_CONTENTTYPE_TEXT_PLAIN);
  if (name == ((void*)0))
    return luaL_error( L, "name must be set." );

  coap_luser_entry *h = ((void*)0);

  if(isvar)
    h = variable_entry;
  else
    h = function_entry;

  while(((void*)0)!=h->next){
    if(h->name!= ((void*)0) && strcmp(h->name, name)==0)
      break;
    h = h->next;
  }

  if(h->name==((void*)0) || strcmp(h->name, name)!=0){
    h->next = (coap_luser_entry *)calloc(1,sizeof(coap_luser_entry));
    h = h->next;
    if(h == ((void*)0))
      return luaL_error(L, "not enough memory");
    h->next = ((void*)0);
    h->name = ((void*)0);
  }

  h->name = name;
  h->content_type = content_type;

  NODE_DBG("coap_regist is called.\n");
  return 0;
}
