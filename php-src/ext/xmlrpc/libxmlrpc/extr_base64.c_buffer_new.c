
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_st {int length; scalar_t__ offset; scalar_t__* data; scalar_t__* ptr; } ;


 scalar_t__* emalloc (int) ;

void buffer_new(struct buffer_st *b)
{
  b->length = 512;
  b->data = emalloc(sizeof(char)*(b->length));
  b->data[0] = 0;
  b->ptr = b->data;
  b->offset = 0;
}
