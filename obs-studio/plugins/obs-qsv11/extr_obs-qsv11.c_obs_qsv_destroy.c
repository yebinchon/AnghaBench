
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_qsv {int packet_data; int performance_token; } ;


 int bfree (struct obs_qsv*) ;
 int clear_data (struct obs_qsv*) ;
 int da_free (int ) ;
 int os_end_high_performance (int ) ;

__attribute__((used)) static void obs_qsv_destroy(void *data)
{
 struct obs_qsv *obsqsv = (struct obs_qsv *)data;

 if (obsqsv) {
  os_end_high_performance(obsqsv->performance_token);
  clear_data(obsqsv);
  da_free(obsqsv->packet_data);
  bfree(obsqsv);
 }
}
