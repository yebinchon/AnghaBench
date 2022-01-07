
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serializer {int (* seek ) (int ,int,int) ;int data; } ;
typedef int int64_t ;
typedef enum serialize_seek_type { ____Placeholder_serialize_seek_type } serialize_seek_type ;


 int stub1 (int ,int,int) ;

__attribute__((used)) static inline int64_t serializer_seek(struct serializer *s, int64_t offset,
          enum serialize_seek_type seek_type)
{
 if (s && s->seek)
  return s->seek(s->data, offset, seek_type);
 return -1;
}
