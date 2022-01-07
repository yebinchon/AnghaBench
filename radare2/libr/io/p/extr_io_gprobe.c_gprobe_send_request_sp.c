
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef scalar_t__ ut64 ;
struct gport {int dummy; } ;
typedef int RBuffer ;


 int * r_buf_data (int *,scalar_t__*) ;
 scalar_t__ sp_blocking_write (struct gport*,int const*,scalar_t__,int) ;
 int sp_flush (struct gport*) ;

__attribute__((used)) static int gprobe_send_request_sp(struct gport *port, RBuffer *request) {
 sp_flush (port);

 ut64 tmpsz;
 const ut8 *tmp = r_buf_data (request, &tmpsz);
 if (sp_blocking_write (port, tmp, tmpsz, 100) != tmpsz) {
  return -1;
 }

 return 0;
}
