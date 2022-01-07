
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void help(void)
{
 fprintf(stderr, "Usage: virtio_test [--help]"
  " [--no-indirect]"
  " [--no-event-idx]"
  " [--no-virtio-1]"
  " [--delayed-interrupt]"
  "\n");
}
