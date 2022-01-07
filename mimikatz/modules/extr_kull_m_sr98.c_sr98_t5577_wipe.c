
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int FALSE ;
 int SR98_RATE_RF_32 ;
 int sr98_t5577_reset (int ,int ) ;
 scalar_t__ sr98_t5577_write_block (int ,int ,int,int,int ,int ) ;

BOOL sr98_t5577_wipe(HANDLE hFile, BOOL resetAfter)
{
 BOOL status;
 BYTE i;
 status = sr98_t5577_write_block(hFile, 0, 0, 0x40800800, FALSE, 0);
 for(i = 1; i < 8; i++)
  sr98_t5577_write_block(hFile, 0, i, 0x00000000, FALSE, 0);
 if(status && resetAfter)
  sr98_t5577_reset(hFile, SR98_RATE_RF_32);
 return status;
}
