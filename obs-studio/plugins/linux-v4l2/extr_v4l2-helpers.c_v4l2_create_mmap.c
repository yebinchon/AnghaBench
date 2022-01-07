
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; } ;
struct v4l2_requestbuffers {int count; int index; TYPE_1__ m; int length; int memory; int type; } ;
struct v4l2_mmap_info {int dummy; } ;
struct v4l2_buffer_data {int count; TYPE_2__* info; } ;
struct v4l2_buffer {int count; int index; TYPE_1__ m; int length; int memory; int type; } ;
typedef int req ;
typedef int map ;
typedef int int_fast32_t ;
struct TYPE_4__ {scalar_t__ start; int length; } ;


 int LOG_ERROR ;
 scalar_t__ MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_MEMORY_MMAP ;
 int VIDIOC_QUERYBUF ;
 int VIDIOC_REQBUFS ;
 int blog (int ,char*) ;
 TYPE_2__* bzalloc (int) ;
 int memset (struct v4l2_requestbuffers*,int ,int) ;
 scalar_t__ v4l2_ioctl (int,int ,struct v4l2_requestbuffers*) ;
 scalar_t__ v4l2_mmap (int *,int ,int,int ,int,int ) ;

int_fast32_t v4l2_create_mmap(int_fast32_t dev, struct v4l2_buffer_data *buf)
{
 struct v4l2_requestbuffers req;
 struct v4l2_buffer map;

 memset(&req, 0, sizeof(req));
 req.count = 4;
 req.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 req.memory = V4L2_MEMORY_MMAP;

 if (v4l2_ioctl(dev, VIDIOC_REQBUFS, &req) < 0) {
  blog(LOG_ERROR, "Request for buffers failed !");
  return -1;
 }

 if (req.count < 2) {
  blog(LOG_ERROR, "Device returned less than 2 buffers");
  return -1;
 }

 buf->count = req.count;
 buf->info = bzalloc(req.count * sizeof(struct v4l2_mmap_info));

 memset(&map, 0, sizeof(map));
 map.type = req.type;
 map.memory = req.memory;

 for (map.index = 0; map.index < req.count; ++map.index) {
  if (v4l2_ioctl(dev, VIDIOC_QUERYBUF, &map) < 0) {
   blog(LOG_ERROR, "Failed to query buffer details");
   return -1;
  }

  buf->info[map.index].length = map.length;
  buf->info[map.index].start =
   v4l2_mmap(((void*)0), map.length, PROT_READ | PROT_WRITE,
      MAP_SHARED, dev, map.m.offset);

  if (buf->info[map.index].start == MAP_FAILED) {
   blog(LOG_ERROR, "mmap for buffer failed");
   return -1;
  }
 }

 return 0;
}
