
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* xmlNsPtr ;
typedef TYPE_2__* xmlNodePtr ;
typedef char xmlChar ;
typedef int * sdlTypePtr ;
typedef TYPE_3__* sdlPtr ;
struct TYPE_10__ {scalar_t__ elements; } ;
struct TYPE_9__ {int doc; } ;
struct TYPE_8__ {char const* href; } ;


 int BAD_CAST (char*) ;
 int efree (char*) ;
 char* emalloc (int) ;
 int memcpy (char*,char*,int) ;
 int parse_namespace (char const*,char**,char**) ;
 int strlen (char*) ;
 TYPE_1__* xmlSearchNs (int ,TYPE_2__*,int ) ;
 int xmlStrlen (char const*) ;
 int * zend_hash_str_find_ptr (scalar_t__,char*,int) ;

__attribute__((used)) static sdlTypePtr get_element(sdlPtr sdl, xmlNodePtr node, const xmlChar *type)
{
 sdlTypePtr ret = ((void*)0);

 if (sdl->elements) {
  xmlNsPtr nsptr;
  char *ns, *cptype;
  sdlTypePtr sdl_type;

  parse_namespace(type, &cptype, &ns);
  nsptr = xmlSearchNs(node->doc, node, BAD_CAST(ns));
  if (nsptr != ((void*)0)) {
   int ns_len = xmlStrlen(nsptr->href);
   int type_len = strlen(cptype);
   int len = ns_len + type_len + 1;
   char *nscat = emalloc(len + 1);

   memcpy(nscat, nsptr->href, ns_len);
   nscat[ns_len] = ':';
   memcpy(nscat+ns_len+1, cptype, type_len);
   nscat[len] = '\0';

   if ((sdl_type = zend_hash_str_find_ptr(sdl->elements, nscat, len)) != ((void*)0)) {
    ret = sdl_type;
   } else if ((sdl_type = zend_hash_str_find_ptr(sdl->elements, (char*)type, type_len)) != ((void*)0)) {
    ret = sdl_type;
   }
   efree(nscat);
  } else {
   if ((sdl_type = zend_hash_str_find_ptr(sdl->elements, (char*)type, xmlStrlen(type))) != ((void*)0)) {
    ret = sdl_type;
   }
  }

  efree(cptype);
  if (ns) {efree(ns);}
 }
 return ret;
}
