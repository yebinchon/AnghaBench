
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_state {int attached; int ctx; int handle; } ;


 int libusb_attach_kernel_driver (int ,int ) ;
 int libusb_close (int ) ;
 int libusb_exit (int ) ;
 int libusb_release_interface (int ,int ) ;

void test_exit(struct test_state *state)
{
 libusb_release_interface(state->handle, 0);
 if (state->attached == 1)
  libusb_attach_kernel_driver(state->handle, 0);
 libusb_close(state->handle);
 libusb_exit(state->ctx);
}
