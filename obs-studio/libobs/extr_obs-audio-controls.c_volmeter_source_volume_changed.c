
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_volmeter {int mutex; int cur_db; } ;
typedef int calldata_t ;


 scalar_t__ calldata_float (int *,char*) ;
 int mul_to_db (float) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void volmeter_source_volume_changed(void *vptr, calldata_t *calldata)
{
 struct obs_volmeter *volmeter = (struct obs_volmeter *)vptr;

 pthread_mutex_lock(&volmeter->mutex);

 float mul = (float)calldata_float(calldata, "volume");
 volmeter->cur_db = mul_to_db(mul);

 pthread_mutex_unlock(&volmeter->mutex);
}
