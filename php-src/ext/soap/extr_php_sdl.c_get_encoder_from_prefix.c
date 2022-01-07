
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xmlNsPtr ;
typedef TYPE_2__* xmlNodePtr ;
typedef int xmlChar ;
typedef int sdlPtr ;
typedef int * encodePtr ;
struct TYPE_7__ {int doc; } ;
struct TYPE_6__ {scalar_t__ href; } ;


 int BAD_CAST (char*) ;
 int efree (char*) ;
 int * get_encoder (int ,char*,char*) ;
 int * get_encoder_ex (int ,char*,int ) ;
 int parse_namespace (int const*,char**,char**) ;
 int strlen (char*) ;
 TYPE_1__* xmlSearchNs (int ,TYPE_2__*,int ) ;
 int xmlStrlen (int const*) ;

encodePtr get_encoder_from_prefix(sdlPtr sdl, xmlNodePtr node, const xmlChar *type)
{
 encodePtr enc = ((void*)0);
 xmlNsPtr nsptr;
 char *ns, *cptype;

 parse_namespace(type, &cptype, &ns);
 nsptr = xmlSearchNs(node->doc, node, BAD_CAST(ns));
 if (nsptr != ((void*)0)) {
  enc = get_encoder(sdl, (char*)nsptr->href, cptype);
  if (enc == ((void*)0)) {
   enc = get_encoder_ex(sdl, cptype, strlen(cptype));
  }
 } else {
  enc = get_encoder_ex(sdl, (char*)type, xmlStrlen(type));
 }
 efree(cptype);
 if (ns) {efree(ns);}
 return enc;
}
