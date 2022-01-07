
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef scalar_t__* PLONGLONG ;
typedef scalar_t__ LPFILETIME ;


 scalar_t__ Int32x32To64 (int ,int) ;

void kuhl_m_kerberos_ccache_UnixTimeToFileTime(time_t t, LPFILETIME pft)
{
 *(PLONGLONG) pft = Int32x32To64(t, 10000000) + 116444736000000000;
}
