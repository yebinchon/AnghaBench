
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {size_t size; } ;
struct TYPE_3__ {size_t buffer_size; size_t bytesRemaining; int stream; TYPE_2__ new_data; } ;


 int PA_SEEK_RELATIVE ;
 int PULSE_DATA (void*) ;
 int circlebuf_pop_front (TYPE_2__*,int *,size_t) ;
 TYPE_1__* data ;
 int pa_stream_begin_write (int ,void**,size_t*) ;
 int pa_stream_write (int ,int *,size_t,int *,long long,int ) ;
 int pulseaudio_lock () ;
 int pulseaudio_unlock () ;

__attribute__((used)) static void do_stream_write(void *param)
{
 PULSE_DATA(param);
 uint8_t *buffer = ((void*)0);

 while (data->new_data.size >= data->buffer_size &&
        data->bytesRemaining > 0) {
  size_t bytesToFill = data->buffer_size;

  if (bytesToFill > data->bytesRemaining)
   bytesToFill = data->bytesRemaining;

  pa_stream_begin_write(data->stream, (void **)&buffer,
          &bytesToFill);

  circlebuf_pop_front(&data->new_data, buffer, bytesToFill);

  pulseaudio_lock();
  pa_stream_write(data->stream, buffer, bytesToFill, ((void*)0), 0LL,
    PA_SEEK_RELATIVE);
  pulseaudio_unlock();

  data->bytesRemaining -= bytesToFill;
 }
}
