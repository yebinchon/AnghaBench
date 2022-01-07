
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 int TRACE (char*,scalar_t__ const,scalar_t__ const) ;

__attribute__((used)) static int comp_tics (const void *ap, const void *bp)
{
    const DWORD a = *(const DWORD *)ap;
    const DWORD b = *(const DWORD *)bp;

    TRACE("(a=%d, b=%d)\n", a, b);
    if (a < b) return -1;
    if (a > b) return 1;
    return 0;
}
