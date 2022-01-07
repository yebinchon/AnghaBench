
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_stat_t ;
struct TYPE_5__ {int * scheme; } ;
typedef TYPE_1__ xmlURI ;
typedef int xmlChar ;


 int MAXPATHLEN ;
 int VCWD_REALPATH (char*,char*) ;
 int expand_filepath (char*,char*) ;
 int memcpy (char*,char*,int ) ;
 size_t php_dirname (char*,int ) ;
 scalar_t__ php_sys_stat (char*,int *) ;
 int strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 TYPE_1__* xmlCreateURI () ;
 int xmlFree (int *) ;
 int xmlFreeURI (TYPE_1__*) ;
 int xmlParseURIReference (TYPE_1__*,char*) ;
 int * xmlURIEscapeStr (int *,int *) ;

__attribute__((used)) static char *_xmlwriter_get_valid_file_path(char *source, char *resolved_path, int resolved_path_len ) {
 xmlURI *uri;
 xmlChar *escsource;
 char *file_dest;
 int isFileUri = 0;

 uri = xmlCreateURI();
 escsource = xmlURIEscapeStr((xmlChar *)source, (xmlChar *) ":");
 xmlParseURIReference(uri, (char *)escsource);
 xmlFree(escsource);

 if (uri->scheme != ((void*)0)) {

  if (strncasecmp(source, "file:///", 8) == 0) {
   if (source[sizeof("file:///") - 1] == '\0') {
    xmlFreeURI(uri);
    return ((void*)0);
   }
   isFileUri = 1;



   source += 7;

  } else if (strncasecmp(source, "file://localhost/",17) == 0) {
   if (source[sizeof("file://localhost/") - 1] == '\0') {
    xmlFreeURI(uri);
    return ((void*)0);
   }

   isFileUri = 1;



   source += 16;

  }
 }

 if ((uri->scheme == ((void*)0) || isFileUri)) {
  char file_dirname[MAXPATHLEN];
  size_t dir_len;

  if (!VCWD_REALPATH(source, resolved_path) && !expand_filepath(source, resolved_path)) {
   xmlFreeURI(uri);
   return ((void*)0);
  }

  memcpy(file_dirname, source, strlen(source));
  dir_len = php_dirname(file_dirname, strlen(source));

  if (dir_len > 0) {
   zend_stat_t buf;
   if (php_sys_stat(file_dirname, &buf) != 0) {
    xmlFreeURI(uri);
    return ((void*)0);
   }
  }

  file_dest = resolved_path;
 } else {
  file_dest = source;
 }

 xmlFreeURI(uri);

 return file_dest;
}
