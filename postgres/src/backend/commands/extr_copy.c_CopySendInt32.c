
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef scalar_t__ int32 ;
typedef int buf ;
typedef int CopyState ;


 int CopySendData (int ,int *,int) ;
 int pg_hton32 (int ) ;

__attribute__((used)) static void
CopySendInt32(CopyState cstate, int32 val)
{
 uint32 buf;

 buf = pg_hton32((uint32) val);
 CopySendData(cstate, &buf, sizeof(buf));
}
