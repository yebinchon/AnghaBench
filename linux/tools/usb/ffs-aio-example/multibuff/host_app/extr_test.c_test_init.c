
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_state {int attached; int * ctx; int * handle; int * found; } ;
struct libusb_device_descriptor {scalar_t__ idVendor; scalar_t__ idProduct; } ;
typedef int ssize_t ;
typedef int libusb_device ;


 scalar_t__ PRODUCT ;
 scalar_t__ VENDOR ;
 int libusb_attach_kernel_driver (int *,int ) ;
 int libusb_claim_interface (int *,int ) ;
 int libusb_close (int *) ;
 int libusb_detach_kernel_driver (int *,int ) ;
 char* libusb_error_name (int) ;
 int libusb_exit (int *) ;
 int libusb_free_device_list (int **,int) ;
 int libusb_get_device_descriptor (int *,struct libusb_device_descriptor*) ;
 int libusb_get_device_list (int *,int ***) ;
 int libusb_init (int **) ;
 int libusb_open (int *,int **) ;
 int printf (char*,...) ;

int test_init(struct test_state *state)
{
 int i, ret;
 ssize_t cnt;
 libusb_device **list;

 state->found = ((void*)0);
 state->ctx = ((void*)0);
 state->handle = ((void*)0);
 state->attached = 0;

 ret = libusb_init(&state->ctx);
 if (ret) {
  printf("cannot init libusb: %s\n", libusb_error_name(ret));
  return 1;
 }

 cnt = libusb_get_device_list(state->ctx, &list);
 if (cnt <= 0) {
  printf("no devices found\n");
  goto error1;
 }

 for (i = 0; i < cnt; ++i) {
  libusb_device *dev = list[i];
  struct libusb_device_descriptor desc;
  ret = libusb_get_device_descriptor(dev, &desc);
  if (ret) {
   printf("unable to get device descriptor: %s\n",
          libusb_error_name(ret));
   goto error2;
  }
  if (desc.idVendor == VENDOR && desc.idProduct == PRODUCT) {
   state->found = dev;
   break;
  }
 }

 if (!state->found) {
  printf("no devices found\n");
  goto error2;
 }

 ret = libusb_open(state->found, &state->handle);
 if (ret) {
  printf("cannot open device: %s\n", libusb_error_name(ret));
  goto error2;
 }

 if (libusb_claim_interface(state->handle, 0)) {
  ret = libusb_detach_kernel_driver(state->handle, 0);
  if (ret) {
   printf("unable to detach kernel driver: %s\n",
          libusb_error_name(ret));
   goto error3;
  }
  state->attached = 1;
  ret = libusb_claim_interface(state->handle, 0);
  if (ret) {
   printf("cannot claim interface: %s\n",
          libusb_error_name(ret));
   goto error4;
  }
 }

 return 0;

error4:
 if (state->attached == 1)
  libusb_attach_kernel_driver(state->handle, 0);

error3:
 libusb_close(state->handle);

error2:
 libusb_free_device_list(list, 1);

error1:
 libusb_exit(state->ctx);
 return 1;
}
