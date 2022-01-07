
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t string_fill; size_t string_size; char* string; } ;
struct TYPE_6__ {scalar_t__ (* realloc ) (char*,size_t) ;} ;
struct TYPE_8__ {TYPE_2__ data; TYPE_1__ alloc; } ;
typedef TYPE_3__ json_stream ;


 int errno ;
 int json_error_s (TYPE_3__*,int ) ;
 scalar_t__ stub1 (char*,size_t) ;

__attribute__((used)) static int pushchar(json_stream *json, int c)
{
    if (json->data.string_fill == json->data.string_size) {
        size_t size = json->data.string_size * 2;
        char *buffer = (char*) json->alloc.realloc(json->data.string, size);
        if (buffer == ((void*)0)) {
            json_error_s(json, errno);
            return -1;
        } else {
            json->data.string_size = size;
            json->data.string = buffer;
        }
    }
    json->data.string[json->data.string_fill++] = c;
    return 0;
}
