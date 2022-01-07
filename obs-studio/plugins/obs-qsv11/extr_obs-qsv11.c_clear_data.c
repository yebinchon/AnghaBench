
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_qsv {int * extra_data; int * context; } ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int bfree (int *) ;
 int g_QsvCs ;
 int qsv_encoder_close (int *) ;

__attribute__((used)) static void clear_data(struct obs_qsv *obsqsv)
{
 if (obsqsv->context) {
  EnterCriticalSection(&g_QsvCs);
  qsv_encoder_close(obsqsv->context);
  obsqsv->context = ((void*)0);
  LeaveCriticalSection(&g_QsvCs);


  bfree(obsqsv->extra_data);


  obsqsv->extra_data = ((void*)0);
 }
}
