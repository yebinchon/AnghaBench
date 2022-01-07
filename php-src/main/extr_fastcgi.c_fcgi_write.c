
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ fcgi_request_type ;
struct TYPE_8__ {int out_pos; int out_buf; scalar_t__ keep; TYPE_5__* out_hdr; int id; } ;
typedef TYPE_1__ fcgi_request ;
typedef int fcgi_header ;
struct TYPE_9__ {scalar_t__ type; } ;


 int close_packet (TYPE_1__*) ;
 int fcgi_flush (TYPE_1__*,int ) ;
 int fcgi_make_header (TYPE_5__*,scalar_t__,int ,int) ;
 int memcpy (int,char const*,int) ;
 int open_packet (TYPE_1__*,scalar_t__) ;
 int safe_write (TYPE_1__*,char const*,int) ;

int fcgi_write(fcgi_request *req, fcgi_request_type type, const char *str, int len)
{
 int limit, rest;

 if (len <= 0) {
  return 0;
 }

 if (req->out_hdr && req->out_hdr->type != type) {
  close_packet(req);
 }
 limit = (int)(sizeof(req->out_buf) - (req->out_pos - req->out_buf));
 if (!req->out_hdr) {
  limit -= sizeof(fcgi_header);
  if (limit < 0) limit = 0;
 }

 if (len < limit) {
  if (!req->out_hdr) {
   open_packet(req, type);
  }
  memcpy(req->out_pos, str, len);
  req->out_pos += len;
 } else if (len - limit < (int)(sizeof(req->out_buf) - sizeof(fcgi_header))) {
  if (!req->out_hdr) {
   open_packet(req, type);
  }
  if (limit > 0) {
   memcpy(req->out_pos, str, limit);
   req->out_pos += limit;
  }
  if (!fcgi_flush(req, 0)) {
   return -1;
  }
  if (len > limit) {
   open_packet(req, type);
   memcpy(req->out_pos, str + limit, len - limit);
   req->out_pos += len - limit;
  }
 } else {
  int pos = 0;
  int pad;

  close_packet(req);
  while ((len - pos) > 0xffff) {
   open_packet(req, type);
   fcgi_make_header(req->out_hdr, type, req->id, 0xfff8);
   req->out_hdr = ((void*)0);
   if (!fcgi_flush(req, 0)) {
    return -1;
   }
   if (safe_write(req, str + pos, 0xfff8) != 0xfff8) {
    req->keep = 0;
    return -1;
   }
   pos += 0xfff8;
  }

  pad = (((len - pos) + 7) & ~7) - (len - pos);
  rest = pad ? 8 - pad : 0;

  open_packet(req, type);
  fcgi_make_header(req->out_hdr, type, req->id, (len - pos) - rest);
  req->out_hdr = ((void*)0);
  if (!fcgi_flush(req, 0)) {
   return -1;
  }
  if (safe_write(req, str + pos, (len - pos) - rest) != (len - pos) - rest) {
   req->keep = 0;
   return -1;
  }
  if (pad) {
   open_packet(req, type);
   memcpy(req->out_pos, str + len - rest, rest);
   req->out_pos += rest;
  }
 }

 return len;
}
