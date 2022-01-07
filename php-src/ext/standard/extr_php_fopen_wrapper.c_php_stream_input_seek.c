
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_off_t ;
struct TYPE_5__ {TYPE_3__* body; int position; } ;
typedef TYPE_1__ php_stream_input_t ;
struct TYPE_6__ {TYPE_1__* abstract; } ;
typedef TYPE_2__ php_stream ;
struct TYPE_7__ {int position; } ;


 int php_stream_seek (TYPE_3__*,int ,int) ;

__attribute__((used)) static int php_stream_input_seek(php_stream *stream, zend_off_t offset, int whence, zend_off_t *newoffset)
{
 php_stream_input_t *input = stream->abstract;

 if (input->body) {
  int sought = php_stream_seek(input->body, offset, whence);
  *newoffset = input->position = (input->body)->position;
  return sought;
 }

 return -1;
}
