
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int STREAM ;


 int SEC_ENCRYPT ;
 int g_licence_error_result ;
 int g_licence_issued ;
 int mcs_init (int) ;
 int s_push_layer (int ,int ,int) ;
 int sec_hdr ;

STREAM
sec_init(uint32 flags, int maxlen)
{
 int hdrlen;
 STREAM s;

 if (!g_licence_issued && !g_licence_error_result)
  hdrlen = (flags & SEC_ENCRYPT) ? 12 : 4;
 else
  hdrlen = (flags & SEC_ENCRYPT) ? 12 : 0;
 s = mcs_init(maxlen + hdrlen);
 s_push_layer(s, sec_hdr, hdrlen);

 return s;
}
