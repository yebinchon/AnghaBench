
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PktStreamStat {int dummy; } ;


 int px_free (struct PktStreamStat*) ;
 int px_memset (struct PktStreamStat*,int ,int) ;

__attribute__((used)) static void
pkt_stream_free(void *priv)
{
 struct PktStreamStat *st = priv;

 px_memset(st, 0, sizeof(*st));
 px_free(st);
}
