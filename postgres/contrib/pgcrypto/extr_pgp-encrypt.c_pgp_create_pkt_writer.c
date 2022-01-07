
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PushFilter ;


 int pkt_stream_filter ;
 int pushf_create (int **,int *,int *,int *) ;
 int write_tag_only (int *,int) ;

int
pgp_create_pkt_writer(PushFilter *dst, int tag, PushFilter **res_p)
{
 int res;

 res = write_tag_only(dst, tag);
 if (res < 0)
  return res;

 return pushf_create(res_p, &pkt_stream_filter, ((void*)0), dst);
}
