
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int php_stream ;
typedef int markername ;


 int M_APP0 ;
 int Z_ARRVAL_P (int *) ;
 int add_assoc_stringl (int *,char*,char*,unsigned short) ;
 int efree (char*) ;
 char* emalloc (size_t) ;
 unsigned short php_read2 (int *) ;
 unsigned short php_stream_read (int *,char*,size_t) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;
 int * zend_hash_str_find (int ,char*,int ) ;

__attribute__((used)) static int php_read_APP(php_stream * stream, unsigned int marker, zval *info)
{
 unsigned short length;
 char *buffer;
 char markername[16];
 zval *tmp;

 length = php_read2(stream);
 if (length < 2) {
  return 0;
 }
 length -= 2;

 buffer = emalloc((size_t)length);

 if (php_stream_read(stream, buffer, (size_t) length) != length) {
  efree(buffer);
  return 0;
 }

 snprintf(markername, sizeof(markername), "APP%d", marker - M_APP0);

 if ((tmp = zend_hash_str_find(Z_ARRVAL_P(info), markername, strlen(markername))) == ((void*)0)) {

  add_assoc_stringl(info, markername, buffer, length);
 }

 efree(buffer);
 return 1;
}
