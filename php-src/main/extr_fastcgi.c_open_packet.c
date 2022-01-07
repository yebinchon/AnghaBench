
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fcgi_request_type ;
struct TYPE_5__ {TYPE_2__* out_hdr; scalar_t__ out_pos; } ;
typedef TYPE_1__ fcgi_request ;
struct TYPE_6__ {int type; } ;
typedef TYPE_2__ fcgi_header ;



__attribute__((used)) static inline fcgi_header* open_packet(fcgi_request *req, fcgi_request_type type)
{
 req->out_hdr = (fcgi_header*) req->out_pos;
 req->out_hdr->type = type;
 req->out_pos += sizeof(fcgi_header);
 return req->out_hdr;
}
