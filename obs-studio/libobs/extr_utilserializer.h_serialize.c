
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serializer {size_t (* write ) (int ,void*,size_t) ;size_t (* read ) (int ,void*,size_t) ;int data; } ;


 size_t stub1 (int ,void*,size_t) ;
 size_t stub2 (int ,void*,size_t) ;

__attribute__((used)) static inline size_t serialize(struct serializer *s, void *data, size_t len)
{
 if (s) {
  if (s->write)
   return s->write(s->data, data, len);
  else if (s->read)
   return s->read(s->data, data, len);
 }

 return 0;
}
