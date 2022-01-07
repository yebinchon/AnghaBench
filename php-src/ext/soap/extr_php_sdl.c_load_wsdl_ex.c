
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_2__* xmlNodePtr ;
typedef TYPE_3__* xmlErrorPtr ;
typedef TYPE_2__* xmlDocPtr ;
typedef int xmlChar ;
typedef TYPE_5__* xmlAttrPtr ;
typedef TYPE_6__* sdlPtr ;
struct TYPE_29__ {int services; int bindings; int portTypes; int messages; int docs; TYPE_6__* sdl; } ;
typedef TYPE_7__ sdlCtx ;
struct TYPE_30__ {int * URL; } ;
struct TYPE_28__ {int target_ns; } ;
struct TYPE_27__ {TYPE_1__* children; } ;
struct TYPE_26__ {int message; } ;
struct TYPE_25__ {char* name; struct TYPE_25__* next; int properties; TYPE_9__* doc; struct TYPE_25__* children; } ;
struct TYPE_24__ {char* content; } ;


 int E_ERROR ;
 int WSDL_NAMESPACE ;
 int XSD_NAMESPACE ;
 int estrdup (char*) ;
 TYPE_5__* get_attribute (int ,char*) ;
 TYPE_2__* get_node_ex (TYPE_2__*,char*,int ) ;
 scalar_t__ is_wsdl_element (TYPE_2__*) ;
 int load_schema (TYPE_7__*,TYPE_2__*) ;
 scalar_t__ node_is_equal (TYPE_2__*,char*) ;
 scalar_t__ node_is_equal_ex (TYPE_2__*,char*,int ) ;
 int sdl_restore_uri_credentials (TYPE_7__*) ;
 int sdl_set_uri_credentials (TYPE_7__*,char*) ;
 int soap_error0 (int ,char*) ;
 int soap_error1 (int ,char*,char*) ;
 int soap_error2 (int ,char*,char*,int ) ;
 TYPE_2__* soap_xmlParseFile (char*) ;
 int strlen (char*) ;
 int * xmlBuildURI (char*,int *) ;
 int xmlFree (int *) ;
 TYPE_3__* xmlGetLastError () ;
 int * xmlNodeGetBase (TYPE_9__*,TYPE_2__*) ;
 int xmlStrlen (char*) ;
 int * zend_hash_str_add_ptr (int *,char*,int ,TYPE_2__*) ;
 scalar_t__ zend_hash_str_exists (int *,char*,int ) ;

__attribute__((used)) static void load_wsdl_ex(zval *this_ptr, char *struri, sdlCtx *ctx, int include)
{
 sdlPtr tmpsdl = ctx->sdl;
 xmlDocPtr wsdl;
 xmlNodePtr root, definitions, trav;
 xmlAttrPtr targetNamespace;

 if (zend_hash_str_exists(&ctx->docs, struri, strlen(struri))) {
  return;
 }

 sdl_set_uri_credentials(ctx, struri);
 wsdl = soap_xmlParseFile(struri);
 sdl_restore_uri_credentials(ctx);

 if (!wsdl) {
  xmlErrorPtr xmlErrorPtr = xmlGetLastError();

  if (xmlErrorPtr) {
   soap_error2(E_ERROR, "Parsing WSDL: Couldn't load from '%s' : %s", struri, xmlErrorPtr->message);
  } else {
   soap_error1(E_ERROR, "Parsing WSDL: Couldn't load from '%s'", struri);
  }
 }

 zend_hash_str_add_ptr(&ctx->docs, struri, strlen(struri), wsdl);

 root = wsdl->children;
 definitions = get_node_ex(root, "definitions", WSDL_NAMESPACE);
 if (!definitions) {
  if (include) {
   xmlNodePtr schema = get_node_ex(root, "schema", XSD_NAMESPACE);
   if (schema) {
    load_schema(ctx, schema);
    return;
   }
  }
  soap_error1(E_ERROR, "Parsing WSDL: Couldn't find <definitions> in '%s'", struri);
 }

 if (!include) {
  targetNamespace = get_attribute(definitions->properties, "targetNamespace");
  if (targetNamespace) {
   tmpsdl->target_ns = estrdup((char*)targetNamespace->children->content);
  }
 }

 trav = definitions->children;
 while (trav != ((void*)0)) {
  if (!is_wsdl_element(trav)) {
   trav = trav->next;
   continue;
  }
  if (node_is_equal(trav,"types")) {

   xmlNodePtr trav2 = trav->children;

   while (trav2 != ((void*)0)) {
    if (node_is_equal_ex(trav2, "schema", XSD_NAMESPACE)) {
     load_schema(ctx, trav2);
    } else if (is_wsdl_element(trav2) && !node_is_equal(trav2,"documentation")) {
     soap_error1(E_ERROR, "Parsing WSDL: Unexpected WSDL element <%s>", trav2->name);
    }
    trav2 = trav2->next;
   }
  } else if (node_is_equal(trav,"import")) {

   xmlAttrPtr tmp = get_attribute(trav->properties, "location");
   if (tmp) {
    xmlChar *uri;
    xmlChar *base = xmlNodeGetBase(trav->doc, trav);

    if (base == ((void*)0)) {
     uri = xmlBuildURI(tmp->children->content, trav->doc->URL);
    } else {
     uri = xmlBuildURI(tmp->children->content, base);
     xmlFree(base);
    }
    load_wsdl_ex(this_ptr, (char*)uri, ctx, 1);
    xmlFree(uri);
   }

  } else if (node_is_equal(trav,"message")) {
   xmlAttrPtr name = get_attribute(trav->properties, "name");
   if (name && name->children && name->children->content) {
    if (zend_hash_str_add_ptr(&ctx->messages, (char*)name->children->content, xmlStrlen(name->children->content), trav) == ((void*)0)) {
     soap_error1(E_ERROR, "Parsing WSDL: <message> '%s' already defined", name->children->content);
    }
   } else {
    soap_error0(E_ERROR, "Parsing WSDL: <message> has no name attribute");
   }

  } else if (node_is_equal(trav,"portType")) {
   xmlAttrPtr name = get_attribute(trav->properties, "name");
   if (name && name->children && name->children->content) {
    if (zend_hash_str_add_ptr(&ctx->portTypes, (char*)name->children->content, xmlStrlen(name->children->content), trav) == ((void*)0)) {
     soap_error1(E_ERROR, "Parsing WSDL: <portType> '%s' already defined", name->children->content);
    }
   } else {
    soap_error0(E_ERROR, "Parsing WSDL: <portType> has no name attribute");
   }

  } else if (node_is_equal(trav,"binding")) {
   xmlAttrPtr name = get_attribute(trav->properties, "name");
   if (name && name->children && name->children->content) {
    if (zend_hash_str_add_ptr(&ctx->bindings, (char*)name->children->content, xmlStrlen(name->children->content), trav) == ((void*)0)) {
     soap_error1(E_ERROR, "Parsing WSDL: <binding> '%s' already defined", name->children->content);
    }
   } else {
    soap_error0(E_ERROR, "Parsing WSDL: <binding> has no name attribute");
   }

  } else if (node_is_equal(trav,"service")) {
   xmlAttrPtr name = get_attribute(trav->properties, "name");
   if (name && name->children && name->children->content) {
    if (zend_hash_str_add_ptr(&ctx->services, (char*)name->children->content, xmlStrlen(name->children->content), trav) == ((void*)0)) {
     soap_error1(E_ERROR, "Parsing WSDL: <service> '%s' already defined", name->children->content);
    }
   } else {
    soap_error0(E_ERROR, "Parsing WSDL: <service> has no name attribute");
   }
  } else if (!node_is_equal(trav,"documentation")) {
   soap_error1(E_ERROR, "Parsing WSDL: Unexpected WSDL element <%s>", trav->name);
  }
  trav = trav->next;
 }
}
