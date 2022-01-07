
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_element ;
typedef int XML_ELEM_OUTPUT_OPTIONS ;
typedef int FILE ;


 int file_out_fptr ;
 int xml_element_serialize (int *,int ,void*,int ,int ) ;

void xml_elem_serialize_to_stream(xml_element *el, FILE *output, XML_ELEM_OUTPUT_OPTIONS options)
{
   xml_element_serialize(el, file_out_fptr, (void *)output, options, 0);
}
