
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* my_error_ptr ;
typedef TYPE_2__* j_common_ptr ;
struct TYPE_6__ {int err; } ;
struct TYPE_5__ {int setjmp_buffer; scalar_t__ stopOnWarning; int warning; int (* emit_message ) (TYPE_2__*,int) ;} ;


 int TRUE ;
 int longjmp (int ,int) ;
 int stub1 (TYPE_2__*,int) ;

__attribute__((used)) static void my_emit_message(j_common_ptr cinfo, int msg_level)
{
 my_error_ptr myerr=(my_error_ptr)cinfo->err;

 myerr->emit_message(cinfo, msg_level);
  if (msg_level < 0) {
    myerr->warning = TRUE;
    if (myerr->stopOnWarning) longjmp(myerr->setjmp_buffer, 1);
  }
}
