
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;
typedef int RD_BOOL ;


 int MCS_TAG_DOMAIN_PARAMS ;
 int ber_parse_header (int ,int ,int*) ;
 int in_uint8s (int ,int) ;
 int s_check (int ) ;

__attribute__((used)) static RD_BOOL
mcs_parse_domain_params(STREAM s)
{
 int length;

 ber_parse_header(s, MCS_TAG_DOMAIN_PARAMS, &length);
 in_uint8s(s, length);

 return s_check(s);
}
