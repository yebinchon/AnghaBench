
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; size_t len; } ;
typedef TYPE_1__ BUFFER ;


 int buffer_increase (TYPE_1__*,size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void buffer_need_bytes(BUFFER *buffer, size_t needed_free_size) {
    if(unlikely(buffer->size - buffer->len < needed_free_size))
        buffer_increase(buffer, needed_free_size);
}
