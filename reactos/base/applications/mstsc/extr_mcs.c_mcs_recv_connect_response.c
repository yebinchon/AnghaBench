
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8 ;
typedef int * STREAM ;
typedef int RD_BOOL ;


 int BER_TAG_INTEGER ;
 int BER_TAG_OCTET_STRING ;
 int BER_TAG_RESULT ;
 int False ;
 int MCS_CONNECT_RESPONSE ;
 int ber_parse_header (int *,int ,int*) ;
 int error (char*,scalar_t__) ;
 int in_uint8 (int *,scalar_t__) ;
 int in_uint8s (int *,int) ;
 int * iso_recv (int *) ;
 int mcs_parse_domain_params (int *) ;
 int s_check_end (int *) ;
 int sec_process_mcs_data (int *) ;

__attribute__((used)) static RD_BOOL
mcs_recv_connect_response(STREAM mcs_data)
{
 uint8 result;
 int length;
 STREAM s;

 s = iso_recv(((void*)0));
 if (s == ((void*)0))
  return False;

 ber_parse_header(s, MCS_CONNECT_RESPONSE, &length);

 ber_parse_header(s, BER_TAG_RESULT, &length);
 in_uint8(s, result);
 if (result != 0)
 {
  error("MCS connect: %d\n", result);
  return False;
 }

 ber_parse_header(s, BER_TAG_INTEGER, &length);
 in_uint8s(s, length);
 mcs_parse_domain_params(s);

 ber_parse_header(s, BER_TAG_OCTET_STRING, &length);

 sec_process_mcs_data(s);
 return s_check_end(s);
}
