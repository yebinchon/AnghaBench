
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* shape; struct TYPE_4__* format; } ;
typedef TYPE_1__ _buffer_info_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
_buffer_info_free(_buffer_info_t *info)
{
    if (info->format) {
        free(info->format);
    }
    if (info->shape) {
        free(info->shape);
    }
    free(info);
}
