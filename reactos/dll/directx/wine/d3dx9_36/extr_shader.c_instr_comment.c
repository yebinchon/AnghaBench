
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct instr_info {int dummy; } ;
typedef int DWORD ;
typedef int BOOL ;


 int D3DSI_COMMENTSIZE_MASK ;
 int D3DSI_COMMENTSIZE_SHIFT ;

__attribute__((used)) static int instr_comment(const struct instr_info *info, DWORD **ptr, char *buffer, BOOL ps)
{
    *ptr += 1 + ((**ptr & D3DSI_COMMENTSIZE_MASK) >> D3DSI_COMMENTSIZE_SHIFT);
    return 0;
}
