
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zmq_msg_t ;
struct cereal_SensorEventData_SensorVec {int v; } ;
struct cereal_SensorEventData {scalar_t__ which; int acceleration; } ;
struct cereal_Event {scalar_t__ which; int sensorEvents; } ;
struct capn {int dummy; } ;
typedef int cereal_SensorEventData_list ;
struct TYPE_3__ {int p; } ;
typedef TYPE_1__ cereal_Event_ptr ;


 int assert (int) ;
 int capn_free (struct capn*) ;
 int capn_get32 (int ,int) ;
 int capn_getp (int ,int ,int) ;
 int capn_init_mem (struct capn*,int ,int ,int ) ;
 int capn_len (int ) ;
 int capn_root (struct capn*) ;
 float capn_to_f32 (int ) ;
 scalar_t__ cereal_Event_sensorEvents ;
 scalar_t__ cereal_SensorEventData_acceleration ;
 int cereal_get_SensorEventData (struct cereal_SensorEventData*,int ,int) ;
 int cereal_read_Event (struct cereal_Event*,TYPE_1__) ;
 int cereal_read_SensorEventData_SensorVec (struct cereal_SensorEventData_SensorVec*,int ) ;
 int zmq_msg_close (int *) ;
 int zmq_msg_data (int *) ;
 int zmq_msg_init (int *) ;
 int zmq_msg_recv (int *,void*,int ) ;
 int zmq_msg_size (int *) ;

__attribute__((used)) static bool acceleration_from_sensor_sock(void* sock, float* vs) {
  int err;

  zmq_msg_t msg;
  err = zmq_msg_init(&msg);
  assert(err == 0);

  err = zmq_msg_recv(&msg, sock, 0);
  assert(err >= 0);

  struct capn ctx;
  capn_init_mem(&ctx, zmq_msg_data(&msg), zmq_msg_size(&msg), 0);

  cereal_Event_ptr eventp;
  eventp.p = capn_getp(capn_root(&ctx), 0, 1);
  struct cereal_Event eventd;
  cereal_read_Event(&eventd, eventp);

  bool ret = 0;

  if (eventd.which == cereal_Event_sensorEvents) {
    cereal_SensorEventData_list lst = eventd.sensorEvents;
    int len = capn_len(lst);
    for (int i=0; i<len; i++) {
      struct cereal_SensorEventData sensord;
      cereal_get_SensorEventData(&sensord, lst, i);

      if (sensord.which == cereal_SensorEventData_acceleration) {
        struct cereal_SensorEventData_SensorVec vecd;
        cereal_read_SensorEventData_SensorVec(&vecd, sensord.acceleration);

        int vlen = capn_len(vecd.v);
        if (vlen < 3) {
          continue;
        }
        for (int j=0; j<3; j++) {
          vs[j] = capn_to_f32(capn_get32(vecd.v, j));
        }
        ret = 1;
        break;
      }
    }
  }

  capn_free(&ctx);
  zmq_msg_close(&msg);

  return ret;
}
