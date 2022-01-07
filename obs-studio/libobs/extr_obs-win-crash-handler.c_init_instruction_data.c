
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {void* Mode; int Offset; } ;
struct TYPE_8__ {void* Mode; int Offset; } ;
struct TYPE_7__ {void* Mode; int Offset; } ;
struct TYPE_10__ {TYPE_4__ AddrStack; TYPE_3__ AddrPC; TYPE_2__ AddrFrame; } ;
struct TYPE_6__ {int Esp; int Ebp; int Eip; int Rsp; int Rbp; int Rip; } ;
struct stack_trace {TYPE_5__ frame; int image_type; TYPE_1__ context; int instruction_ptr; } ;


 void* AddrModeFlat ;
 int IMAGE_FILE_MACHINE_AMD64 ;
 int IMAGE_FILE_MACHINE_I386 ;

__attribute__((used)) static inline void init_instruction_data(struct stack_trace *trace)
{







 trace->instruction_ptr = trace->context.Eip;
 trace->frame.AddrPC.Offset = trace->instruction_ptr;
 trace->frame.AddrFrame.Offset = trace->context.Ebp;
 trace->frame.AddrStack.Offset = trace->context.Esp;
 trace->image_type = IMAGE_FILE_MACHINE_I386;


 trace->frame.AddrFrame.Mode = AddrModeFlat;
 trace->frame.AddrPC.Mode = AddrModeFlat;
 trace->frame.AddrStack.Mode = AddrModeFlat;
}
