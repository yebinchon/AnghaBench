
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int num_ports; int buffer_size; int graph_latency_max; int * ports; } ;
struct ao {scalar_t__ samplerate; struct priv* priv; } ;
typedef double jack_nframes_t ;
typedef double int64_t ;


 int MP_NUM_CHANNELS ;
 int ao_read_data (struct ao*,void**,double,double) ;
 double atomic_load (int *) ;
 void* jack_port_get_buffer (int ,double) ;
 double mp_time_us () ;

__attribute__((used)) static int process(jack_nframes_t nframes, void *arg)
{
    struct ao *ao = arg;
    struct priv *p = ao->priv;

    void *buffers[MP_NUM_CHANNELS];

    for (int i = 0; i < p->num_ports; i++)
        buffers[i] = jack_port_get_buffer(p->ports[i], nframes);

    jack_nframes_t jack_latency =
        atomic_load(&p->graph_latency_max) + atomic_load(&p->buffer_size);

    int64_t end_time = mp_time_us();
    end_time += (jack_latency + nframes) / (double)ao->samplerate * 1000000.0;

    ao_read_data(ao, buffers, nframes, end_time);

    return 0;
}
