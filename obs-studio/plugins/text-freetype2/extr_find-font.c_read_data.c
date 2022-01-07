
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serializer {int dummy; } ;


 size_t s_read (struct serializer*,void*,size_t) ;

__attribute__((used)) static inline bool read_data(struct serializer *s, void *data, size_t size)
{
 return s_read(s, data, size) == size;
}
