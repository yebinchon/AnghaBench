
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct update_info {char* etag_remote; } ;


 char* bstrdup (char*) ;
 char* strchr (char*,char) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static size_t http_header(char *buffer, size_t size, size_t nitems,
     struct update_info *info)
{
 if (!strncmp(buffer, "ETag: ", 6)) {
  char *etag = buffer + 6;
  if (*etag) {
   char *etag_clean, *p;

   etag_clean = bstrdup(etag);

   p = strchr(etag_clean, '\r');
   if (p)
    *p = 0;

   p = strchr(etag_clean, '\n');
   if (p)
    *p = 0;

   info->etag_remote = etag_clean;
  }
 }
 return nitems * size;
}
