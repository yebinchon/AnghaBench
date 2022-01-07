
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef scalar_t__ int16 ;
typedef int buf ;
typedef int CopyState ;


 int CopyGetData (int ,int *,int,int) ;
 scalar_t__ pg_ntoh16 (int ) ;

__attribute__((used)) static bool
CopyGetInt16(CopyState cstate, int16 *val)
{
 uint16 buf;

 if (CopyGetData(cstate, &buf, sizeof(buf), sizeof(buf)) != sizeof(buf))
 {
  *val = 0;
  return 0;
 }
 *val = (int16) pg_ntoh16(buf);
 return 1;
}
