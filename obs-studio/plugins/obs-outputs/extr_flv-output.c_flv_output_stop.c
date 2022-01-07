
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct flv_output {int stop_ts; int stopping; } ;


 int os_atomic_set_bool (int *,int) ;

__attribute__((used)) static void flv_output_stop(void *data, uint64_t ts)
{
 struct flv_output *stream = data;
 stream->stop_ts = ts / 1000;
 os_atomic_set_bool(&stream->stopping, 1);
}
