
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const ut8 ;
typedef int ut32 ;
struct gport {scalar_t__ (* get_reply ) (struct gport*,int ,int *) ;scalar_t__ (* send_request ) (struct gport*,int *) ;int (* frame ) (int *) ;int max_tx_size; } ;
typedef int RBuffer ;


 int GPROBE_ACK ;
 int const GPROBE_RAM_WRITE_2 ;
 int R_MIN (int ,int) ;
 int r_buf_append_bytes (int *,int const*,int) ;
 int r_buf_free (int *) ;
 int * r_buf_new () ;
 int r_write_be32 (int const*,int) ;
 int stub1 (int *) ;
 scalar_t__ stub2 (struct gport*,int *) ;
 scalar_t__ stub3 (struct gport*,int ,int *) ;

__attribute__((used)) static int gprobe_write (struct gport *port, ut32 addr, const ut8 *buf, ut32 count) {
 RBuffer *request = r_buf_new ();
 RBuffer *reply = r_buf_new ();
 const ut8 cmd = GPROBE_RAM_WRITE_2;
 ut8 addr_be[4];
 ut8 count_be[4];

 if (!request || !reply) {
  r_buf_free (request);
  r_buf_free (reply);
  return -1;
 }

 count = R_MIN (port->max_tx_size, count);

 r_write_be32 (addr_be, addr);
 r_write_be32 (count_be, count);

 r_buf_append_bytes (request, &cmd, 1);
 r_buf_append_bytes (request, addr_be, 4);
 r_buf_append_bytes (request, buf, count);

 port->frame (request);

 if (port->send_request (port, request)) {
  goto fail;
 }

 if (port->get_reply (port, GPROBE_ACK, reply)) {
  goto fail;
 }

 r_buf_free (request);
 r_buf_free (reply);

 return count;

fail:
 r_buf_free (request);
 r_buf_free (reply);
 return -1;
}
