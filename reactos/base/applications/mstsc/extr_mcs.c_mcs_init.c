
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;


 int iso_init (int) ;
 int mcs_hdr ;
 int s_push_layer (int ,int ,int) ;

STREAM
mcs_init(int length)
{
 STREAM s;

 s = iso_init(length + 8);
 s_push_layer(s, mcs_hdr, 8);

 return s;
}
