
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PEVENTLOGRECORD ;


 int GetProcessHeap () ;
 int RtlFreeHeap (int ,int ,int ) ;

__attribute__((used)) static __inline void LogfFreeRecord(PEVENTLOGRECORD Record)
{
    RtlFreeHeap(GetProcessHeap(), 0, Record);
}
