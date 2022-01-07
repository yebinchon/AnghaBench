
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xml_element ;
struct TYPE_3__ {int len; char* str; } ;
typedef TYPE_1__ simplestring ;
typedef int XML_ELEM_OUTPUT_OPTIONS ;


 int simplestring_init (TYPE_1__*) ;
 int simplestring_out_fptr ;
 int xml_element_serialize (int *,int ,void*,int ,int ) ;

char* xml_elem_serialize_to_string(xml_element *el, XML_ELEM_OUTPUT_OPTIONS options, int *buf_len)
{
   simplestring buf;
   simplestring_init(&buf);

   xml_element_serialize(el, simplestring_out_fptr, (void *)&buf, options, 0);

   if(buf_len) {
      *buf_len = buf.len;
   }

   return buf.str;
}
