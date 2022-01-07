
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_st {int * data; int * ptr; scalar_t__ offset; scalar_t__ length; } ;


 int efree (int *) ;

void buffer_delete(struct buffer_st *b)
{
  efree(b->data);
  b->length = 0;
  b->offset = 0;
  b->ptr = ((void*)0);
  b->data = ((void*)0);
}
