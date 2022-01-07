
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ out_buf; scalar_t__ out_pos; scalar_t__ keep; int id; } ;
typedef TYPE_2__ fcgi_request ;
struct TYPE_7__ {int protocolStatus; scalar_t__ appStatusB0; scalar_t__ appStatusB1; scalar_t__ appStatusB2; scalar_t__ appStatusB3; } ;
struct TYPE_9__ {TYPE_1__ body; int hdr; } ;
typedef TYPE_3__ fcgi_end_request_rec ;
typedef int fcgi_end_request ;


 int FCGI_END_REQUEST ;
 int FCGI_REQUEST_COMPLETE ;
 int close_packet (TYPE_2__*) ;
 int fcgi_make_header (int *,int ,int ,int) ;
 int safe_write (TYPE_2__*,scalar_t__,int) ;

int fcgi_flush(fcgi_request *req, int end)
{
 int len;

 close_packet(req);

 len = (int)(req->out_pos - req->out_buf);

 if (end) {
  fcgi_end_request_rec *rec = (fcgi_end_request_rec*)(req->out_pos);

  fcgi_make_header(&rec->hdr, FCGI_END_REQUEST, req->id, sizeof(fcgi_end_request));
  rec->body.appStatusB3 = 0;
  rec->body.appStatusB2 = 0;
  rec->body.appStatusB1 = 0;
  rec->body.appStatusB0 = 0;
  rec->body.protocolStatus = FCGI_REQUEST_COMPLETE;
  len += sizeof(fcgi_end_request_rec);
 }

 if (safe_write(req, req->out_buf, len) != len) {
  req->keep = 0;
  req->out_pos = req->out_buf;
  return 0;
 }

 req->out_pos = req->out_buf;
 return 1;
}
