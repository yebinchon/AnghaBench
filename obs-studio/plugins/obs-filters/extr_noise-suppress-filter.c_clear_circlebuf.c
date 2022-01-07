
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct circlebuf {int size; } ;


 int circlebuf_pop_front (struct circlebuf*,int *,int ) ;

__attribute__((used)) static inline void clear_circlebuf(struct circlebuf *buf)
{
 circlebuf_pop_front(buf, ((void*)0), buf->size);
}
