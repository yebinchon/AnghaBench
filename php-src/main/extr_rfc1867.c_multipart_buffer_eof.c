
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bytes_in_buffer; } ;
typedef TYPE_1__ multipart_buffer ;


 int fill_buffer (TYPE_1__*) ;

__attribute__((used)) static int multipart_buffer_eof(multipart_buffer *self)
{
 return self->bytes_in_buffer == 0 && fill_buffer(self) < 1;
}
