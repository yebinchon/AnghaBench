
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serializer {size_t (* read ) (int ,void*,size_t) ;int data; } ;


 size_t stub1 (int ,void*,size_t) ;

__attribute__((used)) static inline size_t s_read(struct serializer *s, void *data, size_t size)
{
 if (s && s->read && data && size)
  return s->read(s->data, (void *)data, size);
 return 0;
}
