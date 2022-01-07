
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 scalar_t__ LICENCE_HWID_SIZE ;
 int buf_out_uint32 (int *,int) ;
 int g_hostname ;
 int strncpy (char*,int ,scalar_t__) ;

__attribute__((used)) static void
licence_generate_hwid(uint8 * hwid)
{
 buf_out_uint32(hwid, 2);
 strncpy((char *) (hwid + 4), g_hostname, LICENCE_HWID_SIZE - 4);
}
