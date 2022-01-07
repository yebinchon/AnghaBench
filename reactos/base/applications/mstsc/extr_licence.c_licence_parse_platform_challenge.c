
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef scalar_t__ uint16 ;
typedef int STREAM ;
typedef int RD_BOOL ;


 int False ;
 scalar_t__ LICENCE_SIGNATURE_SIZE ;
 scalar_t__ LICENCE_TOKEN_SIZE ;
 int error (char*,scalar_t__) ;
 int in_uint16_le (int ,scalar_t__) ;
 int in_uint8p (int ,int *,scalar_t__) ;
 int in_uint8s (int ,int) ;
 int s_check_end (int ) ;

__attribute__((used)) static RD_BOOL
licence_parse_platform_challenge(STREAM s, uint8 ** token, uint8 ** signature)
{
 uint16 tokenlen;

 in_uint8s(s, 6);

 in_uint16_le(s, tokenlen);
 if (tokenlen != LICENCE_TOKEN_SIZE)
 {
  error("token len %d\n", tokenlen);
  return False;
 }

 in_uint8p(s, *token, tokenlen);
 in_uint8p(s, *signature, LICENCE_SIGNATURE_SIZE);

 return s_check_end(s);
}
