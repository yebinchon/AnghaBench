
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int file; int port; int host; } ;
typedef TYPE_1__ TextLog ;


 int free (char*) ;
 char* r_socket_http_get (char*,int *,int*) ;
 char* r_str_newf (char*,int ,int ,int ,char*) ;
 char* r_str_uri_encode (char const*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static char *rtrcmd (TextLog T, const char *str) {
 char *res, *ptr2;
 char *ptr = r_str_uri_encode (str);
 char *uri = r_str_newf ("http://%s:%s/%s%s", T.host, T.port, T.file, ptr? ptr: str);
 int len;
 free (ptr);
 ptr2 = r_socket_http_get (uri, ((void*)0), &len);
 free (uri);
 if (ptr2) {
  ptr2[len] = 0;
  res = strstr (ptr2, "\n\n");
  if (res) {
   res = strstr (res + 1, "\n\n");
  }
  return res? res + 2: ptr2;
 }
 return ((void*)0);
}
