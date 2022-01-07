
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;


 int SEC_ENCRYPT ;
 scalar_t__ g_encryption ;
 int rdp_hdr ;
 int s_push_layer (int ,int ,int) ;
 int sec_init (int ,int) ;

__attribute__((used)) static STREAM
rdp_init_data(int maxlen)
{
 STREAM s;

 s = sec_init(g_encryption ? SEC_ENCRYPT : 0, maxlen + 18);
 s_push_layer(s, rdp_hdr, 18);

 return s;
}
