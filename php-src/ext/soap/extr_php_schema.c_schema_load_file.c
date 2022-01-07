
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef TYPE_2__* xmlNodePtr ;
typedef TYPE_3__* xmlDocPtr ;
typedef int xmlChar ;
typedef TYPE_4__* xmlAttrPtr ;
struct TYPE_23__ {int docs; } ;
typedef TYPE_5__ sdlCtx ;
struct TYPE_22__ {TYPE_1__* children; } ;
struct TYPE_21__ {int children; } ;
struct TYPE_20__ {int properties; } ;
struct TYPE_19__ {int content; } ;


 int BAD_CAST (char*) ;
 int E_ERROR ;
 TYPE_4__* get_attribute (int ,char*) ;
 TYPE_2__* get_node (int ,char*) ;
 int load_schema (TYPE_5__*,TYPE_2__*) ;
 int sdl_restore_uri_credentials (TYPE_5__*) ;
 int sdl_set_uri_credentials (TYPE_5__*,char*) ;
 int soap_error1 (int ,char*,int *) ;
 int soap_error2 (int ,char*,int *,int ) ;
 TYPE_3__* soap_xmlParseFile (char*) ;
 int xmlFreeDoc (TYPE_3__*) ;
 int xmlSetProp (TYPE_2__*,int ,int ) ;
 scalar_t__ xmlStrcmp (int ,int ) ;
 int xmlStrlen (int *) ;
 int zend_hash_str_add_ptr (int *,char*,int ,TYPE_3__*) ;
 int zend_hash_str_exists (int *,char*,int ) ;

__attribute__((used)) static void schema_load_file(sdlCtx *ctx, xmlAttrPtr ns, xmlChar *location, xmlAttrPtr tns, int import) {
 if (location != ((void*)0) &&
     !zend_hash_str_exists(&ctx->docs, (char*)location, xmlStrlen(location))) {
  xmlDocPtr doc;
  xmlNodePtr schema;
  xmlAttrPtr new_tns;

  sdl_set_uri_credentials(ctx, (char*)location);
  doc = soap_xmlParseFile((char*)location);
  sdl_restore_uri_credentials(ctx);

  if (doc == ((void*)0)) {
   soap_error1(E_ERROR, "Parsing Schema: can't import schema from '%s'", location);
  }
  schema = get_node(doc->children, "schema");
  if (schema == ((void*)0)) {
   xmlFreeDoc(doc);
   soap_error1(E_ERROR, "Parsing Schema: can't import schema from '%s'", location);
  }
  new_tns = get_attribute(schema->properties, "targetNamespace");
  if (import) {
   if (ns != ((void*)0) && (new_tns == ((void*)0) || xmlStrcmp(ns->children->content, new_tns->children->content) != 0)) {
    xmlFreeDoc(doc);
    soap_error2(E_ERROR, "Parsing Schema: can't import schema from '%s', unexpected 'targetNamespace'='%s'", location, ns->children->content);
   }
   if (ns == ((void*)0) && new_tns != ((void*)0)) {
    xmlFreeDoc(doc);
    soap_error2(E_ERROR, "Parsing Schema: can't import schema from '%s', unexpected 'targetNamespace'='%s'", location, new_tns->children->content);
   }
  } else {
   new_tns = get_attribute(schema->properties, "targetNamespace");
   if (new_tns == ((void*)0)) {
    if (tns != ((void*)0)) {
     xmlSetProp(schema, BAD_CAST("targetNamespace"), tns->children->content);
    }
   } else if (tns != ((void*)0) && xmlStrcmp(tns->children->content, new_tns->children->content) != 0) {
    xmlFreeDoc(doc);
    soap_error1(E_ERROR, "Parsing Schema: can't include schema from '%s', different 'targetNamespace'", location);
   }
  }
  zend_hash_str_add_ptr(&ctx->docs, (char*)location, xmlStrlen(location), doc);
  load_schema(ctx, schema);
 }
}
