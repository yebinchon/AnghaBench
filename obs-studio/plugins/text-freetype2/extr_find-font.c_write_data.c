
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serializer {int dummy; } ;


 size_t s_write (struct serializer*,void const*,size_t) ;

__attribute__((used)) static inline bool write_data(struct serializer *s, const void *data,
         size_t size)
{
 return s_write(s, data, size) == size;
}
