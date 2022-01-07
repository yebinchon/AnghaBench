
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmp_custom {char const* key; } ;



__attribute__((used)) static const char *rtmp_custom_key(void *data)
{
 struct rtmp_custom *service = data;
 return service->key;
}
