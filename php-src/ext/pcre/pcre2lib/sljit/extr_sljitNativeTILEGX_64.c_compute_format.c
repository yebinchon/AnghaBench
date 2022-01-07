
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct Format {unsigned int pipe_mask; } ;
struct TYPE_4__ {TYPE_1__* opcode; } ;
struct TYPE_3__ {int pipes; } ;


 unsigned int BUNDLE_FORMAT_MASK (int,int,int) ;
 int NO_PIPELINE ;
 struct Format* formats ;
 TYPE_2__* inst_buf ;
 int inst_buf_index ;

const struct Format* compute_format()
{
 unsigned int compatible_pipes = BUNDLE_FORMAT_MASK(
  inst_buf[0].opcode->pipes,
  inst_buf[1].opcode->pipes,
  (inst_buf_index == 3 ? inst_buf[2].opcode->pipes : (1 << NO_PIPELINE)));

 const struct Format* match = ((void*)0);
 const struct Format *b = ((void*)0);
 unsigned int i;
 for (i = 0; i < sizeof formats / sizeof formats[0]; i++) {
  b = &formats[i];
  if ((b->pipe_mask & compatible_pipes) == b->pipe_mask) {
   match = b;
   break;
  }
 }

 return match;
}
