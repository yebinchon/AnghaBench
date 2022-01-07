
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_stack_walk {int dummy; } ;
typedef int LPSTACKFRAME64 ;
typedef int CONTEXT ;
typedef int BOOL ;


 int FALSE ;

__attribute__((used)) static BOOL arm64_stack_walk(struct cpu_stack_walk* csw, LPSTACKFRAME64 frame, CONTEXT* context)
{
    return FALSE;
}
