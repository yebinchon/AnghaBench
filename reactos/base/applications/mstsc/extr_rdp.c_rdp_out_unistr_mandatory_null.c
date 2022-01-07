
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;


 int out_uint16_le (int ,int ) ;
 int rdp_out_unistr (int ,char*,int) ;

void
rdp_out_unistr_mandatory_null(STREAM s, char *string, int len)
{
 if (string && len > 0)
  rdp_out_unistr(s, string, len);
 else
  out_uint16_le(s, 0);
}
