
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmp_custom {char const* username; int use_auth; } ;



__attribute__((used)) static const char *rtmp_custom_username(void *data)
{
 struct rtmp_custom *service = data;
 if (!service->use_auth)
  return ((void*)0);
 return service->username;
}
