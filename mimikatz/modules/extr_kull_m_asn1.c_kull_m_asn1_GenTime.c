
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_3__ {int wSecond; int wMinute; int wHour; int wDay; int wMonth; int wYear; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int PFILETIME ;
typedef int BerElement ;


 int DIRTY_ASN1_ID_GENERALIZED_TIME ;
 scalar_t__ FileTimeToSystemTime (int ,TYPE_1__*) ;
 int ber_printf (int *,char*,int ,char*,int) ;
 scalar_t__ sprintf_s (char*,int,char*,int ,int ,int ,int ,int ,int ) ;

void kull_m_asn1_GenTime(BerElement * pBer, PFILETIME localtime)
{
 SYSTEMTIME st;
 char buffer[4 + 2 + 2 + 2 + 2 + 2 + 1 + 1];
 if(FileTimeToSystemTime(localtime, &st))
  if(sprintf_s(buffer, sizeof(buffer), "%04hu%02hu%02hu%02hu%02hu%02huZ", st.wYear, st.wMonth, st.wDay, st.wHour, st.wMinute, st.wSecond) > 0)
   ber_printf(pBer, "to", DIRTY_ASN1_ID_GENERALIZED_TIME, buffer, sizeof(buffer) - 1);
}
