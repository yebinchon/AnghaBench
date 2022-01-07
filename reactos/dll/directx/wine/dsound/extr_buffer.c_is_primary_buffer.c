
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwFlags; } ;
struct TYPE_5__ {TYPE_1__ dsbd; } ;
typedef TYPE_2__ IDirectSoundBufferImpl ;
typedef int BOOL ;


 int DSBCAPS_PRIMARYBUFFER ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static inline BOOL is_primary_buffer(IDirectSoundBufferImpl *This)
{
    return This->dsbd.dwFlags & DSBCAPS_PRIMARYBUFFER ? TRUE : FALSE;
}
