
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int entity_ht ;




 int ENT_HTML_DOC_TYPE_MASK ;

 int const ent_ht_be_apos ;
 int const ent_ht_be_noapos ;
 int const ent_ht_html4 ;
 int const ent_ht_html5 ;

__attribute__((used)) static const entity_ht *unescape_inverse_map(int all, int flags)
{
 int document_type = flags & ENT_HTML_DOC_TYPE_MASK;

 if (all) {
  switch (document_type) {
  case 130:
  case 128:
   return &ent_ht_html4;
  case 129:
   return &ent_ht_html5;
  default:
   return &ent_ht_be_apos;
  }
 } else {
  switch (document_type) {
  case 130:
   return &ent_ht_be_noapos;
  default:
   return &ent_ht_be_apos;
  }
 }
}
