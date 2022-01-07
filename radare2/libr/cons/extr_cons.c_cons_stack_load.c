
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* context; } ;
struct TYPE_8__ {int * str; } ;
struct TYPE_7__ {scalar_t__ grep; int buf_size; int buf_len; int * buf; } ;
struct TYPE_6__ {TYPE_3__ grep; int buffer_sz; int buffer_len; int * buffer; } ;
typedef TYPE_2__ RConsStack ;
typedef int RConsGrep ;


 TYPE_5__ I ;
 int free (int *) ;
 int memcpy (TYPE_3__*,scalar_t__,int) ;

__attribute__((used)) static void cons_stack_load(RConsStack *data, bool free_current) {
 if (free_current) {
  free (I.context->buffer);
 }
 I.context->buffer = data->buf;
 data->buf = ((void*)0);
 I.context->buffer_len = data->buf_len;
 I.context->buffer_sz = data->buf_size;

 if (data->grep) {
  free (I.context->grep.str);
  memcpy (&I.context->grep, data->grep, sizeof (RConsGrep));
 }
}
