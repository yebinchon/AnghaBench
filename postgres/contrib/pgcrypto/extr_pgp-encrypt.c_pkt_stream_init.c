
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PktStreamStat {int pkt_block; scalar_t__ final_done; } ;
typedef int PushFilter ;


 int STREAM_BLOCK_SHIFT ;
 struct PktStreamStat* px_alloc (int) ;

__attribute__((used)) static int
pkt_stream_init(PushFilter *next, void *init_arg, void **priv_p)
{
 struct PktStreamStat *st;

 st = px_alloc(sizeof(*st));
 st->final_done = 0;
 st->pkt_block = 1 << STREAM_BLOCK_SHIFT;
 *priv_p = st;

 return st->pkt_block;
}
