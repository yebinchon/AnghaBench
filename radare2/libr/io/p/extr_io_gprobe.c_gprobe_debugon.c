
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
struct gport {scalar_t__ (* get_reply ) (struct gport*,int ,int *) ;scalar_t__ (* send_request ) (struct gport*,int *) ;int (* frame ) (int *) ;} ;
typedef int RBuffer ;


 int GPROBE_ACK ;
 int GPROBE_DEBUGON ;
 int r_buf_append_bytes (int *,int const*,int) ;
 int r_buf_free (int *) ;
 int * r_buf_new () ;
 int stub1 (int *) ;
 scalar_t__ stub2 (struct gport*,int *) ;
 scalar_t__ stub3 (struct gport*,int ,int *) ;

__attribute__((used)) static int gprobe_debugon (struct gport *port) {
 if (!port) {
  return -1;
 }
 RBuffer *request = r_buf_new ();
 RBuffer *reply = r_buf_new ();
 const ut8 cmd = GPROBE_DEBUGON;

 if (!request || !reply) {
  goto fail;
 }
 r_buf_append_bytes (request, &cmd, 1);

 port->frame (request);

 if (port->send_request (port, request)) {
  goto fail;
 }

 if (port->get_reply (port, GPROBE_ACK, reply)) {
  goto fail;
 }

 r_buf_free (request);
 r_buf_free (reply);

 return 0;

fail:
 r_buf_free (request);
 r_buf_free (reply);
 return -1;
}
