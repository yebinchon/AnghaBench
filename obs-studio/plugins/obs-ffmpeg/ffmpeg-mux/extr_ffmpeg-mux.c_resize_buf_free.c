
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resize_buf {int buf; } ;


 int free (int ) ;

__attribute__((used)) static inline void resize_buf_free(struct resize_buf *rb)
{
 free(rb->buf);
}
