
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; int start; } ;
typedef TYPE_1__ bstr ;


 int SIZE_MAX ;
 int abort () ;
 int assert (int) ;
 size_t talloc_get_size (int ) ;
 int talloc_realloc_size (void*,int ,size_t) ;

__attribute__((used)) static void resize_append(void *talloc_ctx, bstr *s, size_t append_min)
{
    size_t size = talloc_get_size(s->start);
    assert(s->len <= size);
    if (append_min > size - s->len) {
        if (append_min < size)
            append_min = size;
        if (size >= SIZE_MAX / 2 || append_min >= SIZE_MAX / 2)
            abort();
        s->start = talloc_realloc_size(talloc_ctx, s->start, size + append_min);
    }
}
