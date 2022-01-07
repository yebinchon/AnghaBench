
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_ulong ;
typedef scalar_t__ xmlNodePtr ;


 scalar_t__ SOAP_GLOBAL (int ) ;
 int ref_map ;
 int zend_hash_index_update (scalar_t__,int ,int *) ;

__attribute__((used)) static void soap_add_xml_ref(zval *data, xmlNodePtr node)
{
 if (SOAP_GLOBAL(ref_map)) {
  zend_hash_index_update(SOAP_GLOBAL(ref_map), (zend_ulong)node, data);
 }
}
