
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ifdef_stack_ptr; } ;
struct TYPE_4__ {scalar_t__* pack_stack; scalar_t__* pack_stack_ptr; int ifdef_stack_ptr; int ifdef_stack; int include_stack; int include_stack_ptr; } ;
typedef TYPE_1__ TCCState ;


 TYPE_3__* file ;
 scalar_t__ vstack ;
 scalar_t__ vtop ;

void preprocess_init(TCCState *s1)
{
 s1->include_stack_ptr = s1->include_stack;


 s1->ifdef_stack_ptr = s1->ifdef_stack;
 file->ifdef_stack_ptr = s1->ifdef_stack_ptr;

 vtop = vstack - 1;
 s1->pack_stack[0] = 0;
 s1->pack_stack_ptr = s1->pack_stack;
}
