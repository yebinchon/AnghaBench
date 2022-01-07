
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_7__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_1__ ;
typedef struct TYPE_37__ TYPE_10__ ;


typedef TYPE_2__* xmlNodePtr ;
typedef int xmlChar ;
typedef TYPE_3__* xmlAttrPtr ;
struct TYPE_41__ {TYPE_10__* sdl; void* attributeGroups; void* attributes; } ;
typedef TYPE_4__ sdlCtx ;
struct TYPE_42__ {int * URL; } ;
struct TYPE_40__ {TYPE_1__* children; } ;
struct TYPE_39__ {struct TYPE_39__* next; int name; TYPE_7__* doc; int properties; struct TYPE_39__* children; } ;
struct TYPE_38__ {int content; } ;
struct TYPE_37__ {void* types; } ;
typedef int HashTable ;


 int BAD_CAST (char*) ;
 int E_ERROR ;
 int TRUE ;
 int delete_attribute ;
 int delete_type ;
 void* emalloc (int) ;
 TYPE_3__* get_attribute (int ,char*) ;
 scalar_t__ node_is_equal (TYPE_2__*,char*) ;
 int schema_attribute (TYPE_10__*,TYPE_3__*,TYPE_2__*,int *,TYPE_4__*) ;
 int schema_attributeGroup (TYPE_10__*,TYPE_3__*,TYPE_2__*,int *,TYPE_4__*) ;
 int schema_complexType (TYPE_10__*,TYPE_3__*,TYPE_2__*,int *) ;
 int schema_element (TYPE_10__*,TYPE_3__*,TYPE_2__*,int *,int *) ;
 int schema_group (TYPE_10__*,TYPE_3__*,TYPE_2__*,int *,int *) ;
 int schema_load_file (TYPE_4__*,TYPE_3__*,int *,TYPE_3__*,int) ;
 int schema_simpleType (TYPE_10__*,TYPE_3__*,TYPE_2__*,int *) ;
 int soap_error0 (int ,char*) ;
 int soap_error1 (int ,char*,int ) ;
 int * xmlBuildURI (int ,int *) ;
 int xmlFree (int *) ;
 int xmlNewNs (TYPE_2__*,int ,int *) ;
 int * xmlNodeGetBase (TYPE_7__*,TYPE_2__*) ;
 TYPE_3__* xmlSetProp (TYPE_2__*,int ,int ) ;
 scalar_t__ xmlStrcmp (int ,int ) ;
 int zend_hash_init (void*,int ,int *,int ,int ) ;

int load_schema(sdlCtx *ctx, xmlNodePtr schema)
{
 xmlNodePtr trav;
 xmlAttrPtr tns;

 if (!ctx->sdl->types) {
  ctx->sdl->types = emalloc(sizeof(HashTable));
  zend_hash_init(ctx->sdl->types, 0, ((void*)0), delete_type, 0);
 }
 if (!ctx->attributes) {
  ctx->attributes = emalloc(sizeof(HashTable));
  zend_hash_init(ctx->attributes, 0, ((void*)0), delete_attribute, 0);
 }
 if (!ctx->attributeGroups) {
  ctx->attributeGroups = emalloc(sizeof(HashTable));
  zend_hash_init(ctx->attributeGroups, 0, ((void*)0), delete_type, 0);
 }

 tns = get_attribute(schema->properties, "targetNamespace");
 if (tns == ((void*)0)) {
  tns = xmlSetProp(schema, BAD_CAST("targetNamespace"), BAD_CAST(""));
  xmlNewNs(schema, BAD_CAST(""), ((void*)0));
 }

 trav = schema->children;
 while (trav != ((void*)0)) {
  if (node_is_equal(trav,"include")) {
   xmlAttrPtr location;

   location = get_attribute(trav->properties, "schemaLocation");
   if (location == ((void*)0)) {
    soap_error0(E_ERROR, "Parsing Schema: include has no 'schemaLocation' attribute");
   } else {
    xmlChar *uri;
    xmlChar *base = xmlNodeGetBase(trav->doc, trav);

    if (base == ((void*)0)) {
       uri = xmlBuildURI(location->children->content, trav->doc->URL);
    } else {
       uri = xmlBuildURI(location->children->content, base);
       xmlFree(base);
    }
    schema_load_file(ctx, ((void*)0), uri, tns, 0);
    xmlFree(uri);
   }

  } else if (node_is_equal(trav,"redefine")) {
   xmlAttrPtr location;

   location = get_attribute(trav->properties, "schemaLocation");
   if (location == ((void*)0)) {
    soap_error0(E_ERROR, "Parsing Schema: redefine has no 'schemaLocation' attribute");
   } else {
     xmlChar *uri;
    xmlChar *base = xmlNodeGetBase(trav->doc, trav);

    if (base == ((void*)0)) {
       uri = xmlBuildURI(location->children->content, trav->doc->URL);
    } else {
       uri = xmlBuildURI(location->children->content, base);
       xmlFree(base);
    }
    schema_load_file(ctx, ((void*)0), uri, tns, 0);
    xmlFree(uri);

   }

  } else if (node_is_equal(trav,"import")) {
   xmlAttrPtr ns, location;
   xmlChar *uri = ((void*)0);

   ns = get_attribute(trav->properties, "namespace");
   location = get_attribute(trav->properties, "schemaLocation");

   if (ns != ((void*)0) && tns != ((void*)0) && xmlStrcmp(ns->children->content, tns->children->content) == 0) {
    if (location) {
     soap_error1(E_ERROR, "Parsing Schema: can't import schema from '%s', namespace must not match the enclosing schema 'targetNamespace'", location->children->content);
    } else {
     soap_error0(E_ERROR, "Parsing Schema: can't import schema. Namespace must not match the enclosing schema 'targetNamespace'");
    }
   }
   if (location) {
    xmlChar *base = xmlNodeGetBase(trav->doc, trav);

    if (base == ((void*)0)) {
       uri = xmlBuildURI(location->children->content, trav->doc->URL);
    } else {
       uri = xmlBuildURI(location->children->content, base);
       xmlFree(base);
    }
   }
   schema_load_file(ctx, ns, uri, tns, 1);
   if (uri != ((void*)0)) {xmlFree(uri);}
  } else if (node_is_equal(trav,"annotation")) {
  } else {
   break;
  }
  trav = trav->next;
 }

 while (trav != ((void*)0)) {
  if (node_is_equal(trav,"simpleType")) {
   schema_simpleType(ctx->sdl, tns, trav, ((void*)0));
  } else if (node_is_equal(trav,"complexType")) {
   schema_complexType(ctx->sdl, tns, trav, ((void*)0));
  } else if (node_is_equal(trav,"group")) {
   schema_group(ctx->sdl, tns, trav, ((void*)0), ((void*)0));
  } else if (node_is_equal(trav,"attributeGroup")) {
   schema_attributeGroup(ctx->sdl, tns, trav, ((void*)0), ctx);
  } else if (node_is_equal(trav,"element")) {
   schema_element(ctx->sdl, tns, trav, ((void*)0), ((void*)0));
  } else if (node_is_equal(trav,"attribute")) {
   schema_attribute(ctx->sdl, tns, trav, ((void*)0), ctx);
  } else if (node_is_equal(trav,"notation")) {

  } else if (node_is_equal(trav,"annotation")) {

  } else {
   soap_error1(E_ERROR, "Parsing Schema: unexpected <%s> in schema", trav->name);
  }
  trav = trav->next;
 }
 return TRUE;
}
