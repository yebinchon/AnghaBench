
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cursor_options; int magic; } ;
typedef TYPE_1__ _SPI_plan ;


 int CURSOR_OPT_PARALLEL_OK ;
 int InvalidSnapshot ;
 int SPI_ERROR_ARGUMENT ;
 int _SPI_PLAN_MAGIC ;
 int _SPI_begin_call (int) ;
 int _SPI_end_call (int) ;
 int _SPI_execute_plan (TYPE_1__*,int *,int ,int ,int,int,long) ;
 int _SPI_prepare_oneshot_plan (char const*,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

int
SPI_execute(const char *src, bool read_only, long tcount)
{
 _SPI_plan plan;
 int res;

 if (src == ((void*)0) || tcount < 0)
  return SPI_ERROR_ARGUMENT;

 res = _SPI_begin_call(1);
 if (res < 0)
  return res;

 memset(&plan, 0, sizeof(_SPI_plan));
 plan.magic = _SPI_PLAN_MAGIC;
 plan.cursor_options = CURSOR_OPT_PARALLEL_OK;

 _SPI_prepare_oneshot_plan(src, &plan);

 res = _SPI_execute_plan(&plan, ((void*)0),
       InvalidSnapshot, InvalidSnapshot,
       read_only, 1, tcount);

 _SPI_end_call(1);
 return res;
}
