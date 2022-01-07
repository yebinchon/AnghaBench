
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_context {unsigned int* isStateDirty; } ;
typedef int DWORD ;
typedef unsigned int BYTE ;
typedef unsigned int BOOL ;


 int CHAR_BIT ;

__attribute__((used)) static inline BOOL isStateDirty(const struct wined3d_context *context, DWORD state)
{
    DWORD idx = state / (sizeof(*context->isStateDirty) * CHAR_BIT);
    BYTE shift = state & ((sizeof(*context->isStateDirty) * CHAR_BIT) - 1);
    return context->isStateDirty[idx] & (1u << shift);
}
