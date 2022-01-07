
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int X509_NAME_ENTRY ;
typedef int X509_NAME ;
typedef int ASN1_STRING ;
typedef int ASN1_OBJECT ;


 unsigned char* ASN1_STRING_get0_data (int *) ;
 int ASN1_STRING_length (int *) ;
 int ASN1_STRING_to_UTF8 (unsigned char**,int *) ;
 scalar_t__ ASN1_STRING_type (int *) ;
 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_STRING ;
 scalar_t__ OBJ_nid2ln (int) ;
 scalar_t__ OBJ_nid2sn (int) ;
 int OBJ_obj2nid (int *) ;
 int OPENSSL_free (unsigned char*) ;
 scalar_t__ V_ASN1_UTF8STRING ;
 int * X509_NAME_ENTRY_get_data (int *) ;
 int * X509_NAME_ENTRY_get_object (int *) ;
 int X509_NAME_entry_count (int *) ;
 int * X509_NAME_get_entry (int *,int) ;
 int ZVAL_COPY_VALUE (int *,int *) ;
 int Z_ARRVAL (int ) ;
 int Z_ARRVAL_P (int *) ;
 int Z_STR_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int add_assoc_stringl (int *,char*,char*,int) ;
 int add_next_index_str (int *,int ) ;
 int add_next_index_stringl (int *,char const*,int) ;
 int array_init (int *) ;
 int php_openssl_store_errors () ;
 int strlen (char*) ;
 int * zend_hash_str_find (int ,char*,int ) ;
 int zend_hash_str_update (int ,char*,int ,int *) ;
 int zend_string_copy (int ) ;

__attribute__((used)) static void php_openssl_add_assoc_name_entry(zval * val, char * key, X509_NAME * name, int shortname)
{
 zval *data;
 zval subitem, tmp;
 int i;
 char *sname;
 int nid;
 X509_NAME_ENTRY * ne;
 ASN1_STRING * str = ((void*)0);
 ASN1_OBJECT * obj;

 if (key != ((void*)0)) {
  array_init(&subitem);
 } else {
  ZVAL_COPY_VALUE(&subitem, val);
 }

 for (i = 0; i < X509_NAME_entry_count(name); i++) {
  const unsigned char *to_add = ((void*)0);
  int to_add_len = 0;
  unsigned char *to_add_buf = ((void*)0);

  ne = X509_NAME_get_entry(name, i);
  obj = X509_NAME_ENTRY_get_object(ne);
  nid = OBJ_obj2nid(obj);

  if (shortname) {
   sname = (char *) OBJ_nid2sn(nid);
  } else {
   sname = (char *) OBJ_nid2ln(nid);
  }

  str = X509_NAME_ENTRY_get_data(ne);
  if (ASN1_STRING_type(str) != V_ASN1_UTF8STRING) {

   to_add_len = ASN1_STRING_to_UTF8(&to_add_buf, str);
   to_add = to_add_buf;
  } else {

   to_add = ASN1_STRING_get0_data(str);
   to_add_len = ASN1_STRING_length(str);
  }

  if (to_add_len != -1) {
   if ((data = zend_hash_str_find(Z_ARRVAL(subitem), sname, strlen(sname))) != ((void*)0)) {
    if (Z_TYPE_P(data) == IS_ARRAY) {
     add_next_index_stringl(data, (const char *)to_add, to_add_len);
    } else if (Z_TYPE_P(data) == IS_STRING) {
     array_init(&tmp);
     add_next_index_str(&tmp, zend_string_copy(Z_STR_P(data)));
     add_next_index_stringl(&tmp, (const char *)to_add, to_add_len);
     zend_hash_str_update(Z_ARRVAL(subitem), sname, strlen(sname), &tmp);
    }
   } else {



    add_assoc_stringl(&subitem, sname, (char *)to_add, to_add_len);
   }
  } else {
   php_openssl_store_errors();
  }

  if (to_add_buf != ((void*)0)) {
   OPENSSL_free(to_add_buf);
  }
 }

 if (key != ((void*)0)) {
  zend_hash_str_update(Z_ARRVAL_P(val), key, strlen(key), &subitem);
 }
}
