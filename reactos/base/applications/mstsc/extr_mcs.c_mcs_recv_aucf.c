
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint16 ;
typedef int * STREAM ;
typedef int RD_BOOL ;


 int False ;
 int MCS_AUCF ;
 int error (char*,int) ;
 int in_uint16_be (int *,int ) ;
 int in_uint8 (int *,int) ;
 int * iso_recv (int *) ;
 int s_check_end (int *) ;

__attribute__((used)) static RD_BOOL
mcs_recv_aucf(uint16 * mcs_userid)
{
 uint8 opcode, result;
 STREAM s;

 s = iso_recv(((void*)0));
 if (s == ((void*)0))
  return False;

 in_uint8(s, opcode);
 if ((opcode >> 2) != MCS_AUCF)
 {
  error("expected AUcf, got %d\n", opcode);
  return False;
 }

 in_uint8(s, result);
 if (result != 0)
 {
  error("AUrq: %d\n", result);
  return False;
 }

 if (opcode & 2)
  in_uint16_be(s, *mcs_userid);

 return s_check_end(s);
}
