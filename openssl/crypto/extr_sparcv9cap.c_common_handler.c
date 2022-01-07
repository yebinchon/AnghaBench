
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int common_jmp ;
 int siglongjmp (int ,int) ;

__attribute__((used)) static void common_handler(int sig)
{
    siglongjmp(common_jmp, sig);
}
