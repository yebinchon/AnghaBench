
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PullFilter ;
typedef int MBuf ;


 int mbuf_reader ;
 int pullf_create (int **,int *,int *,int *) ;

int
pullf_create_mbuf_reader(PullFilter **mp_p, MBuf *src)
{
 return pullf_create(mp_p, &mbuf_reader, src, ((void*)0));
}
