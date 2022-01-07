
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;


 int abort () ;

__attribute__((used)) static void never_callback_guest(struct virtqueue *vq)
{
 abort();
}
