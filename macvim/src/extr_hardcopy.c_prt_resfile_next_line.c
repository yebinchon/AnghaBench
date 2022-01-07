
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line_end; int len; scalar_t__* buffer; int line_start; } ;


 scalar_t__ PSCR ;
 scalar_t__ PSLF ;
 TYPE_1__ prt_resfile ;

__attribute__((used)) static int
prt_resfile_next_line()
{
    int idx;


    idx = prt_resfile.line_end + 1;
    while (idx < prt_resfile.len)
    {
 if (prt_resfile.buffer[idx] != PSLF && prt_resfile.buffer[idx] != PSCR)
     break;
 idx++;
    }
    prt_resfile.line_start = idx;

    while (idx < prt_resfile.len)
    {
 if (prt_resfile.buffer[idx] == PSLF || prt_resfile.buffer[idx] == PSCR)
     break;
 idx++;
    }
    prt_resfile.line_end = idx;

    return (idx < prt_resfile.len);
}
