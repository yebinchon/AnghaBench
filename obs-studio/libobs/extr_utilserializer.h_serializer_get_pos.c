
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serializer {int (* get_pos ) (int ) ;int data; } ;
typedef int int64_t ;


 int stub1 (int ) ;

__attribute__((used)) static inline int64_t serializer_get_pos(struct serializer *s)
{
 if (s && s->get_pos)
  return s->get_pos(s->data);
 return -1;
}
