
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;



__attribute__((used)) static bool no_notify_host(struct virtqueue *vq)
{
 return 1;
}
