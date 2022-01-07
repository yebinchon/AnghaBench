
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef scalar_t__ int16 ;
typedef int buf ;
typedef int CopyState ;


 int CopySendData (int ,int *,int) ;
 int pg_hton16 (int ) ;

__attribute__((used)) static void
CopySendInt16(CopyState cstate, int16 val)
{
 uint16 buf;

 buf = pg_hton16((uint16) val);
 CopySendData(cstate, &buf, sizeof(buf));
}
