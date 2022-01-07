
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serializer {int get_pos; int write; struct serializer* data; } ;
struct array_output_data {int get_pos; int write; struct array_output_data* data; } ;


 int array_output_get_pos ;
 int array_output_write ;
 int memset (struct serializer*,int ,int) ;

void array_output_serializer_init(struct serializer *s,
      struct array_output_data *data)
{
 memset(s, 0, sizeof(struct serializer));
 memset(data, 0, sizeof(struct array_output_data));
 s->data = data;
 s->write = array_output_write;
 s->get_pos = array_output_get_pos;
}
