
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int instr_time ;
struct TYPE_5__ {int save_f_total_time; int save_total; int f_start; TYPE_1__* fs; } ;
struct TYPE_4__ {int f_self_time; int f_total_time; int f_numcalls; } ;
typedef TYPE_1__ PgStat_FunctionCounts ;
typedef TYPE_2__ PgStat_FunctionCallUsage ;


 int INSTR_TIME_ADD (int ,int ) ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int INSTR_TIME_SUBTRACT (int ,int ) ;
 int have_function_stats ;
 int total_func_time ;

void
pgstat_end_function_usage(PgStat_FunctionCallUsage *fcu, bool finalize)
{
 PgStat_FunctionCounts *fs = fcu->fs;
 instr_time f_total;
 instr_time f_others;
 instr_time f_self;


 if (fs == ((void*)0))
  return;


 INSTR_TIME_SET_CURRENT(f_total);
 INSTR_TIME_SUBTRACT(f_total, fcu->f_start);


 f_others = total_func_time;
 INSTR_TIME_SUBTRACT(f_others, fcu->save_total);
 f_self = f_total;
 INSTR_TIME_SUBTRACT(f_self, f_others);


 INSTR_TIME_ADD(total_func_time, f_self);
 INSTR_TIME_ADD(f_total, fcu->save_f_total_time);


 if (finalize)
  fs->f_numcalls++;
 fs->f_total_time = f_total;
 INSTR_TIME_ADD(fs->f_self_time, f_self);


 have_function_stats = 1;
}
