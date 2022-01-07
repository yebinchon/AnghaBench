
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef scalar_t__ int32 ;
typedef int buf ;
typedef int CopyState ;


 int CopyGetData (int ,int *,int,int) ;
 scalar_t__ pg_ntoh32 (int ) ;

__attribute__((used)) static bool
CopyGetInt32(CopyState cstate, int32 *val)
{
 uint32 buf;

 if (CopyGetData(cstate, &buf, sizeof(buf), sizeof(buf)) != sizeof(buf))
 {
  *val = 0;
  return 0;
 }
 *val = (int32) pg_ntoh32(buf);
 return 1;
}
