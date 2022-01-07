
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zsock_t ;
typedef void* uint32_t ;
struct TYPE_8__ {scalar_t__ frame_width; int frame_height; int frame_stride; } ;
struct TYPE_7__ {int camera_num; int camera_id; int frame_size; unsigned int max_gain; unsigned int fps; int frame_info_lock; int camera_tb; int ops_sock; void* line_length_pclk; void* pixel_clock; TYPE_4__ ci; } ;
typedef TYPE_1__ CameraState ;


 int ARRAYSIZE (TYPE_4__*) ;
 int FRAME_BUF_COUNT ;
 int assert (int) ;
 int camera_release_buffer ;
 TYPE_4__* cameras_supported ;
 int memset (TYPE_1__*,int ,int) ;
 int pthread_mutex_init (int *,int *) ;
 int tbuffer_init2 (int *,int ,char*,int ,TYPE_1__*) ;
 int * zsock_new_push (char*) ;
 int zsock_resolve (int *) ;

__attribute__((used)) static void camera_init(CameraState *s, int camera_id, int camera_num,
                        uint32_t pixel_clock, uint32_t line_length_pclk,
                        unsigned int max_gain, unsigned int fps) {
  memset(s, 0, sizeof(*s));

  s->camera_num = camera_num;
  s->camera_id = camera_id;

  assert(camera_id < ARRAYSIZE(cameras_supported));
  s->ci = cameras_supported[camera_id];
  assert(s->ci.frame_width != 0);
  s->frame_size = s->ci.frame_height * s->ci.frame_stride;

  s->pixel_clock = pixel_clock;
  s->line_length_pclk = line_length_pclk;
  s->max_gain = max_gain;
  s->fps = fps;

  zsock_t *ops_sock = zsock_new_push(">inproc://cameraops");
  assert(ops_sock);
  s->ops_sock = zsock_resolve(ops_sock);

  tbuffer_init2(&s->camera_tb, FRAME_BUF_COUNT, "frame",
    camera_release_buffer, s);

  pthread_mutex_init(&s->frame_info_lock, ((void*)0));
}
