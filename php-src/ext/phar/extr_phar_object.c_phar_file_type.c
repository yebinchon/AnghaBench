
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* mime; int type; } ;
typedef TYPE_1__ phar_mime_type ;
typedef int HashTable ;


 int PHAR_MIME_OTHER ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 TYPE_1__* zend_hash_str_find_ptr (int *,char*,int ) ;

__attribute__((used)) static int phar_file_type(HashTable *mimes, char *file, char **mime_type)
{
 char *ext;
 phar_mime_type *mime;
 ext = strrchr(file, '.');
 if (!ext) {
  *mime_type = "text/plain";

  return PHAR_MIME_OTHER;
 }
 ++ext;
 if (((void*)0) == (mime = zend_hash_str_find_ptr(mimes, ext, strlen(ext)))) {
  *mime_type = "application/octet-stream";
  return PHAR_MIME_OTHER;
 }
 *mime_type = mime->mime;
 return mime->type;
}
