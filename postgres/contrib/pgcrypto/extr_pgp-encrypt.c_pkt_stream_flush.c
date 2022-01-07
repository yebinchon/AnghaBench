
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
struct PktStreamStat {int final_done; } ;
typedef int PushFilter ;


 int pushf_write (int *,int *,int) ;
 int * render_newlen (int *,int ) ;

__attribute__((used)) static int
pkt_stream_flush(PushFilter *next, void *priv)
{
 int res;
 uint8 hdr[8];
 uint8 *h = hdr;
 struct PktStreamStat *st = priv;


 if (!st->final_done)
 {
  h = render_newlen(h, 0);
  res = pushf_write(next, hdr, h - hdr);
  if (res < 0)
   return res;
  st->final_done = 1;
 }
 return 0;
}
