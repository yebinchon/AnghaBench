
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t len; int * name; } ;


 TYPE_1__* ZIP_URIS ;
 scalar_t__ r_io_zip_has_uri_substr (char const*) ;
 int strncmp (char const*,int *,size_t) ;

__attribute__((used)) static int r_io_zip_check_uri(const char *file) {
 int i;
 if (r_io_zip_has_uri_substr (file)) {
  for (i = 0; ZIP_URIS[i].name != ((void*)0); i++) {
   if (!strncmp (file, ZIP_URIS[i].name, ZIP_URIS[i].len) && file[ZIP_URIS[i].len]) {
    return 1;
   }
  }
 }
 return 0;
}
