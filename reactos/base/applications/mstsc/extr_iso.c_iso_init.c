
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;


 int iso_hdr ;
 int s_push_layer (int ,int ,int) ;
 int tcp_init (int) ;

STREAM
iso_init(int length)
{
 STREAM s;

 s = tcp_init(length + 7);
 s_push_layer(s, iso_hdr, 7);

 return s;
}
