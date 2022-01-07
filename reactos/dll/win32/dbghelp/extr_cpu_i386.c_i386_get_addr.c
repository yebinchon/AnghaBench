
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum cpu_addr { ____Placeholder_cpu_addr } cpu_addr ;
struct TYPE_4__ {int Ebp; int SegSs; int Esp; int Eip; int SegCs; } ;
typedef int HANDLE ;
typedef TYPE_1__ CONTEXT ;
typedef int BOOL ;
typedef int ADDRESS64 ;


 int FALSE ;



 int i386_build_addr (int ,TYPE_1__ const*,int *,int ,int ) ;

__attribute__((used)) static BOOL i386_get_addr(HANDLE hThread, const CONTEXT* ctx,
                          enum cpu_addr ca, ADDRESS64* addr)
{
    return FALSE;
}
