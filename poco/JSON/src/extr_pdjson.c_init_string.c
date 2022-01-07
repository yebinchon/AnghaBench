
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* string; int string_size; scalar_t__ string_fill; } ;
struct TYPE_6__ {scalar_t__ (* malloc ) (int) ;} ;
struct TYPE_8__ {TYPE_2__ data; TYPE_1__ alloc; } ;
typedef TYPE_3__ json_stream ;


 int errno ;
 int json_error_s (TYPE_3__*,int ) ;
 scalar_t__ stub1 (int) ;

__attribute__((used)) static int init_string(json_stream *json)
{
    json->data.string_fill = 0;
    if (json->data.string == ((void*)0)) {
        json->data.string_size = 1024;
        json->data.string = (char*) json->alloc.malloc(json->data.string_size);
        if (json->data.string == ((void*)0)) {
            json_error_s(json, errno);
            return -1;
        }
    }
    json->data.string[0] = '\0';
    return 0;
}
