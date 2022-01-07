
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fcgi_request_type ;
struct TYPE_3__ {unsigned char contentLengthB0; unsigned char contentLengthB1; unsigned char paddingLength; unsigned char requestIdB0; unsigned char requestIdB1; int version; int type; scalar_t__ reserved; } ;
typedef TYPE_1__ fcgi_header ;


 int FCGI_VERSION_1 ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static inline int fcgi_make_header(fcgi_header *hdr, fcgi_request_type type, int req_id, int len)
{
 int pad = ((len + 7) & ~7) - len;

 hdr->contentLengthB0 = (unsigned char)(len & 0xff);
 hdr->contentLengthB1 = (unsigned char)((len >> 8) & 0xff);
 hdr->paddingLength = (unsigned char)pad;
 hdr->requestIdB0 = (unsigned char)(req_id & 0xff);
 hdr->requestIdB1 = (unsigned char)((req_id >> 8) & 0xff);
 hdr->reserved = 0;
 hdr->type = type;
 hdr->version = FCGI_VERSION_1;
 if (pad) {
  memset(((unsigned char*)hdr) + sizeof(fcgi_header) + len, 0, pad);
 }
 return pad;
}
