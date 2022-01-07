
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IDirectSoundBufferImpl ;


 int DSOUND_Calc3DBuffer (int *) ;
 int TRACE (char*,int *) ;

__attribute__((used)) static void DSOUND_Mix3DBuffer(IDirectSoundBufferImpl *dsb)
{
 TRACE("(%p)\n",dsb);

 DSOUND_Calc3DBuffer(dsb);
}
