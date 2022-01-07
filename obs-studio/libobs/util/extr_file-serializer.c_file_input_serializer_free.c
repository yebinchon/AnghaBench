
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serializer {scalar_t__ data; } ;


 int fclose (scalar_t__) ;

void file_input_serializer_free(struct serializer *s)
{
 if (s->data)
  fclose(s->data);
}
