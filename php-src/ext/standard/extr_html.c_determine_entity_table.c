
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int table; int ms_table; int * member_0; } ;
typedef TYPE_1__ entity_table_opt ;


 int ENT_HTML_DOC_HTML401 ;
 int ENT_HTML_DOC_HTML5 ;
 int ENT_HTML_DOC_XML1 ;
 int assert (int) ;
 int entity_ms_table_html4 ;
 int entity_ms_table_html5 ;
 int stage3_table_be_apos_00000 ;
 int stage3_table_be_noapos_00000 ;

__attribute__((used)) static entity_table_opt determine_entity_table(int all, int doctype)
{
 entity_table_opt retval = {((void*)0)};

 assert(!(doctype == ENT_HTML_DOC_XML1 && all));

 if (all) {
  retval.ms_table = (doctype == ENT_HTML_DOC_HTML5) ?
   entity_ms_table_html5 : entity_ms_table_html4;
 } else {
  retval.table = (doctype == ENT_HTML_DOC_HTML401) ?
   stage3_table_be_noapos_00000 : stage3_table_be_apos_00000;
 }
 return retval;
}
