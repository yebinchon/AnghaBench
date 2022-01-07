
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_ulong ;
typedef int zend_bool ;
typedef scalar_t__ xmlNodePtr ;


 scalar_t__ SOAP_GLOBAL (int ) ;
 int ZVAL_COPY (int *,int *) ;
 scalar_t__ Z_COUNTED_P (int *) ;
 int Z_REFCOUNTED_P (int *) ;
 int ref_map ;
 int * zend_hash_index_find (scalar_t__,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static zend_bool soap_check_xml_ref(zval *data, xmlNodePtr node)
{
 zval *data_ptr;

 if (SOAP_GLOBAL(ref_map)) {
  if ((data_ptr = zend_hash_index_find(SOAP_GLOBAL(ref_map), (zend_ulong)node)) != ((void*)0)) {
   if (!Z_REFCOUNTED_P(data) ||
       !Z_REFCOUNTED_P(data_ptr) ||
       Z_COUNTED_P(data) != Z_COUNTED_P(data_ptr)) {
    zval_ptr_dtor(data);
    ZVAL_COPY(data, data_ptr);
    return 1;
   }
  }
 }
 return 0;
}
