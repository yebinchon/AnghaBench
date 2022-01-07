
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const uint8 ;
struct TYPE_3__ {int unexpected_binary; int unicode_mode; scalar_t__ convert_crlf; scalar_t__ text_mode; } ;
typedef int PullFilter ;
typedef TYPE_1__ PGP_Context ;
typedef int MBuf ;


 int GETBYTE (int *,int) ;
 int PXE_PGP_CORRUPT_DATA ;
 int copy_crlf (int *,int const*,int,int*) ;
 int mbuf_append (int *,int const*,int) ;
 int pullf_read (int *,int,int const**) ;
 int pullf_read_max (int *,int,int const**,int const*) ;
 int px_debug (char*,...) ;
 int px_memset (int const*,int ,int) ;

__attribute__((used)) static int
parse_literal_data(PGP_Context *ctx, MBuf *dst, PullFilter *pkt)
{
 int type;
 int name_len;
 int res;
 uint8 *buf;
 uint8 tmpbuf[4];
 int got_cr = 0;

 GETBYTE(pkt, type);
 GETBYTE(pkt, name_len);


 while (name_len > 0)
 {
  res = pullf_read(pkt, name_len, &buf);
  if (res < 0)
   return res;
  if (res == 0)
   break;
  name_len -= res;
 }
 if (name_len > 0)
 {
  px_debug("parse_literal_data: unexpected eof");
  return PXE_PGP_CORRUPT_DATA;
 }


 res = pullf_read_max(pkt, 4, &buf, tmpbuf);
 if (res != 4)
 {
  px_debug("parse_literal_data: unexpected eof");
  return PXE_PGP_CORRUPT_DATA;
 }
 px_memset(tmpbuf, 0, 4);





 if (ctx->text_mode)
  if (type != 't' && type != 'u')
  {
   px_debug("parse_literal_data: data type=%c", type);
   ctx->unexpected_binary = 1;
  }

 ctx->unicode_mode = (type == 'u') ? 1 : 0;


 while (1)
 {
  res = pullf_read(pkt, 32 * 1024, &buf);
  if (res <= 0)
   break;

  if (ctx->text_mode && ctx->convert_crlf)
   res = copy_crlf(dst, buf, res, &got_cr);
  else
   res = mbuf_append(dst, buf, res);
  if (res < 0)
   break;
 }
 if (res >= 0 && got_cr)
  res = mbuf_append(dst, (const uint8 *) "\r", 1);
 return res;
}
