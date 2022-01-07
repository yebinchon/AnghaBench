
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tm_spr_regs {int dummy; } ;
typedef int pid_t ;
struct TYPE_3__ {int tm_tfiar; int tm_texasr; int tm_tfhar; } ;
struct TYPE_4__ {int flag; TYPE_1__ regs; } ;


 int FAIL_IF (int ) ;
 int TEST_PASS ;
 TYPE_2__* pptr ;
 int printf (char*,int ,int ,int ) ;
 int show_tm_spr (int ,struct tm_spr_regs*) ;
 int start_trace (int ) ;
 int stop_trace (int ) ;

int trace_tm_spr(pid_t child)
{
 FAIL_IF(start_trace(child));
 FAIL_IF(show_tm_spr(child, (struct tm_spr_regs *)&pptr->regs));

 printf("TFHAR: %lx TEXASR: %lx TFIAR: %lx\n", pptr->regs.tm_tfhar,
    pptr->regs.tm_texasr, pptr->regs.tm_tfiar);

 pptr->flag = 1;
 FAIL_IF(stop_trace(child));

 return TEST_PASS;
}
