
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int length; scalar_t__ pos; int string; } ;


 int talloc_size (int *,int) ;

__attribute__((used)) static void init_buf(struct buffer *buf, int length)
{
    buf->string = talloc_size(((void*)0), length);
    buf->pos = 0;
    buf->length = length;
}
