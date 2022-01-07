
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * scheme; } ;
typedef TYPE_1__ xmlURI ;
typedef int xmlChar ;


 int VCWD_REALPATH (char*,char*) ;
 int expand_filepath (char*,char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 TYPE_1__* xmlCreateURI () ;
 int xmlFree (int *) ;
 int xmlFreeURI (TYPE_1__*) ;
 int xmlParseURIReference (TYPE_1__*,char const*) ;
 int * xmlURIEscapeStr (int *,int *) ;

char *_xmlreader_get_valid_file_path(char *source, char *resolved_path, int resolved_path_len ) {
 xmlURI *uri;
 xmlChar *escsource;
 char *file_dest;
 int isFileUri = 0;

 uri = xmlCreateURI();
 escsource = xmlURIEscapeStr((xmlChar *)source, (xmlChar *)":");
 xmlParseURIReference(uri, (const char *)escsource);
 xmlFree(escsource);

 if (uri->scheme != ((void*)0)) {

  if (strncasecmp(source, "file:///",8) == 0) {
   isFileUri = 1;



   source += 7;

  } else if (strncasecmp(source, "file://localhost/",17) == 0) {
   isFileUri = 1;



   source += 16;

  }
 }

 file_dest = source;

 if ((uri->scheme == ((void*)0) || isFileUri)) {
  if (!VCWD_REALPATH(source, resolved_path) && !expand_filepath(source, resolved_path)) {
   xmlFreeURI(uri);
   return ((void*)0);
  }
  file_dest = resolved_path;
 }

 xmlFreeURI(uri);

 return file_dest;
}
