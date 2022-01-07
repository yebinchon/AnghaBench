
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
struct gport {scalar_t__ (* get_reply ) (struct gport*,int const,int *) ;scalar_t__ (* send_request ) (struct gport*,int *) ;int (* frame ) (int *) ;} ;
typedef int RBuffer ;


 int GPROBE_GET_INFORMATION ;
 int r_buf_append_bytes (int *,int const*,int) ;
 int * r_buf_data (int *,int *) ;
 int r_buf_free (int *) ;
 int * r_buf_new () ;
 int r_print_hexdump (int *,int ,int const*,int ,int,int,int) ;
 int stub1 (int *) ;
 scalar_t__ stub2 (struct gport*,int *) ;
 scalar_t__ stub3 (struct gport*,int const,int *) ;

__attribute__((used)) static int gprobe_getinformation (struct gport *port) {
 if (!port) {
  return -1;
 }
 RBuffer *request = r_buf_new ();
 RBuffer *reply = r_buf_new ();
 const ut8 cmd = GPROBE_GET_INFORMATION;
 const ut8 index = 0;

 if (!request || !reply) {
  goto fail;
 }

 r_buf_append_bytes (request, &cmd, 1);
 r_buf_append_bytes (request, &index, 1);

 port->frame (request);

 if (port->send_request (port, request)) {
  goto fail;
 }

 if (port->get_reply (port, cmd, reply)) {
  goto fail;
 }

 ut64 tmpsz;
 const ut8 *tmp = r_buf_data (reply, &tmpsz);
 r_print_hexdump (((void*)0), 0, tmp, tmpsz, 16, 1, 1);

 r_buf_free (request);
 r_buf_free (reply);

 return 0;

fail:
 r_buf_free (request);
 r_buf_free (reply);
 return -1;
}
