
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ const WINED3D_SM1_END ;
 int shader_sm1_read_comment (scalar_t__ const**) ;

__attribute__((used)) static BOOL shader_sm1_is_end(void *data, const DWORD **ptr)
{
    shader_sm1_read_comment(ptr);

    if (**ptr == WINED3D_SM1_END)
    {
        ++(*ptr);
        return TRUE;
    }

    return FALSE;
}
