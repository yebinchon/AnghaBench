
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct r2k_data {size_t pid; size_t addr; int len; int* buff; } ;
struct TYPE_6__ {int (* cb_printf ) (char*) ;} ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef TYPE_1__ RIODesc ;
typedef TYPE_2__ RIO ;


 scalar_t__ calloc (int,int) ;
 int free (int*) ;
 int getpagesize () ;
 int ioctl (int,int,struct r2k_data*) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int,int) ;
 int stub1 (char*) ;
 int stub2 (char*) ;

int ReadMemory (RIO *io, RIODesc *iodesc, int ioctl_n, size_t pid, size_t address, ut8 *buf, int len) {
 int ret = -1;
 int pagesize, newlen;
 ut64 pageaddr, offset;
 bool flag = 0;
 ut8 garbage;

 if (iodesc && iodesc->data > 0 && buf) {
  struct r2k_data data;

  data.pid = pid;
  data.addr = address;
  data.len = len;
  data.buff = (ut8 *) calloc (len + 1, 1);
  if (!data.buff) {
   return -1;
  }

  ret = ioctl ((int)(size_t)iodesc->data, ioctl_n, &data);
  if (!ret) {
   memcpy (buf, data.buff, len);
   ret = len;
  } else {
   garbage = 0xff;
   flag = 0;
   offset = 0;
   pagesize = getpagesize();
   pageaddr = address + pagesize;
   pageaddr -= (pageaddr % pagesize);
   if ((len - (int)(pageaddr - address)) > 0) {
    data.len = pageaddr - address;
    ret = ioctl ((int)(size_t)iodesc->data, ioctl_n, &data);
    if (!ret) {
     memcpy (buf + offset, data.buff, pageaddr - address);
     flag = 1;
    } else {
     memset (buf + offset, garbage, pageaddr - address);
    }

    offset = pageaddr - address;
    newlen = len - offset;
    while (newlen >= pagesize) {
     data.addr = pageaddr;
     data.len = pagesize;

     ret = ioctl ((int)(size_t)iodesc->data, ioctl_n, &data);
     if (!ret) {
      memcpy (buf + offset, data.buff, pagesize);
      flag = 1;
     } else {
      memset (buf + offset, garbage, pagesize);
     }
     pageaddr += pagesize;
     offset += pagesize;
     newlen -= pagesize;
    }

    data.addr = pageaddr;
    data.len = newlen;
    ret = ioctl ((int)(size_t)iodesc->data, ioctl_n, &data);
    if (!ret) {
     memcpy (buf + offset, data.buff, newlen);
     flag = 1;
    } else {
     memset (buf + offset, garbage, newlen);
    }
   }
   ret = flag ? len : -1;
  }

  free (data.buff);
 } else if (!buf) {
  io->cb_printf ("Invalid input buffer.\n");
 } else {
  io->cb_printf ("IOCTL device not initialized.\n");
 }
 return ret;
}
