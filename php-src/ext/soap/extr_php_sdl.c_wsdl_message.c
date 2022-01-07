
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;


typedef TYPE_3__* xmlNodePtr ;
typedef int xmlChar ;
typedef TYPE_4__* xmlAttrPtr ;
typedef TYPE_5__* sdlParamPtr ;
typedef int sdlParam ;
struct TYPE_22__ {int sdl; int messages; } ;
typedef TYPE_6__ sdlCtx ;
struct TYPE_21__ {TYPE_13__* element; int encode; int paramName; scalar_t__ order; } ;
struct TYPE_20__ {TYPE_2__* children; } ;
struct TYPE_19__ {struct TYPE_19__* next; int properties; int * name; TYPE_1__* ns; struct TYPE_19__* children; } ;
struct TYPE_18__ {scalar_t__ content; } ;
struct TYPE_17__ {scalar_t__ href; } ;
struct TYPE_16__ {int encode; } ;
typedef int HashTable ;


 int E_ERROR ;
 int WSDL_NAMESPACE ;
 int delete_parameter ;
 void* emalloc (int) ;
 int estrdup (char*) ;
 TYPE_4__* get_attribute (int ,char*) ;
 TYPE_13__* get_element (int ,TYPE_3__*,scalar_t__) ;
 int get_encoder_from_prefix (int ,TYPE_3__*,scalar_t__) ;
 int memset (TYPE_5__*,int ,int) ;
 scalar_t__ node_is_equal (TYPE_3__*,char*) ;
 int soap_error1 (int ,char*,int *) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 int zend_hash_init (int *,int ,int *,int ,int ) ;
 int zend_hash_next_index_insert_ptr (int *,TYPE_5__*) ;
 TYPE_3__* zend_hash_str_find_ptr (int *,char*,int ) ;

__attribute__((used)) static HashTable* wsdl_message(sdlCtx *ctx, xmlChar* message_name)
{
 xmlNodePtr trav, part, message = ((void*)0), tmp;
 HashTable* parameters = ((void*)0);
 char *ctype;

 ctype = strrchr((char*)message_name,':');
 if (ctype == ((void*)0)) {
  ctype = (char*)message_name;
 } else {
  ++ctype;
 }
 if ((tmp = zend_hash_str_find_ptr(&ctx->messages, ctype, strlen(ctype))) == ((void*)0)) {
  soap_error1(E_ERROR, "Parsing WSDL: Missing <message> with name '%s'", message_name);
 }
 message = tmp;

 parameters = emalloc(sizeof(HashTable));
 zend_hash_init(parameters, 0, ((void*)0), delete_parameter, 0);

 trav = message->children;
 while (trav != ((void*)0)) {
  xmlAttrPtr element, type, name;
  sdlParamPtr param;

  if (trav->ns != ((void*)0) && strcmp((char*)trav->ns->href, WSDL_NAMESPACE) != 0) {
   soap_error1(E_ERROR, "Parsing WSDL: Unexpected extensibility element <%s>", trav->name);
  }
  if (node_is_equal(trav,"documentation")) {
   trav = trav->next;
   continue;
  }
  if (!node_is_equal(trav,"part")) {
   soap_error1(E_ERROR, "Parsing WSDL: Unexpected WSDL element <%s>", trav->name);
  }
  part = trav;
  param = emalloc(sizeof(sdlParam));
  memset(param,0,sizeof(sdlParam));
  param->order = 0;

  name = get_attribute(part->properties, "name");
  if (name == ((void*)0)) {
   soap_error1(E_ERROR, "Parsing WSDL: No name associated with <part> '%s'", message->name);
  }

  param->paramName = estrdup((char*)name->children->content);

  type = get_attribute(part->properties, "type");
  if (type != ((void*)0)) {
   param->encode = get_encoder_from_prefix(ctx->sdl, part, type->children->content);
  } else {
   element = get_attribute(part->properties, "element");
   if (element != ((void*)0)) {
    param->element = get_element(ctx->sdl, part, element->children->content);
    if (param->element) {
     param->encode = param->element->encode;
    }
   }
  }

  zend_hash_next_index_insert_ptr(parameters, param);

  trav = trav->next;
 }
 return parameters;
}
