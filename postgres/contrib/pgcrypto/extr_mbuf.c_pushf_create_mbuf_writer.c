
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PushFilter ;
typedef int MBuf ;


 int mbuf_filter ;
 int pushf_create (int **,int *,int *,int *) ;

int
pushf_create_mbuf_writer(PushFilter **res, MBuf *dst)
{
 return pushf_create(res, &mbuf_filter, dst, ((void*)0));
}
