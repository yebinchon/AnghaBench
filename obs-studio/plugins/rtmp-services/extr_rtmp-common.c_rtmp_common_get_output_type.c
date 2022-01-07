
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmp_common {char const* output; } ;



__attribute__((used)) static const char *rtmp_common_get_output_type(void *data)
{
 struct rtmp_common *service = data;
 return service->output;
}
