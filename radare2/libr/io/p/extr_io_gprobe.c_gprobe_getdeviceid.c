
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const ut8 ;
struct gport {scalar_t__ (* get_reply ) (struct gport*,int const,int *) ;scalar_t__ (* send_request ) (struct gport*,int *) ;int (* frame ) (int *) ;} ;
typedef int RBuffer ;


 int const GPROBE_GET_DEVICE_ID ;
 int free (char*) ;
 int printf (char*,char*) ;
 int r_buf_append_bytes (int *,int const*,int) ;
 int r_buf_free (int *) ;
 int * r_buf_new () ;
 char* r_buf_to_string (int *) ;
 int stub1 (int *) ;
 scalar_t__ stub2 (struct gport*,int *) ;
 scalar_t__ stub3 (struct gport*,int const,int *) ;

__attribute__((used)) static int gprobe_getdeviceid (struct gport *port, ut8 index) {
 if (!port) {
  return -1;
 }
 RBuffer *request = r_buf_new ();
 RBuffer *reply = r_buf_new ();
 const ut8 cmd = GPROBE_GET_DEVICE_ID;

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

 char *s = r_buf_to_string (reply);
 if (s) {
  printf ("%s\n", s);
  free (s);
 }

 r_buf_free (request);
 r_buf_free (reply);

 return 0;

fail:
 r_buf_free (request);
 r_buf_free (reply);
 return -1;
}
