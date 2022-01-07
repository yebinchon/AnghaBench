
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int num_buffers; } ;
struct ao {struct priv* priv; } ;
typedef int ALCdevice ;
typedef int ALCcontext ;


 int AL_BUFFER ;
 int alDeleteBuffers (int ,int ) ;
 int alDeleteSources (int,int *) ;
 int alSourceStop (int ) ;
 int alSourcei (int ,int ,int ) ;
 int alcCloseDevice (int *) ;
 int alcDestroyContext (int *) ;
 int * alcGetContextsDevice (int *) ;
 int * alcGetCurrentContext () ;
 int alcMakeContextCurrent (int *) ;
 int * ao_data ;
 int buffers ;
 int source ;

__attribute__((used)) static void uninit(struct ao *ao)
{
    struct priv *p = ao->priv;
    alSourceStop(source);
    alSourcei(source, AL_BUFFER, 0);

    alDeleteBuffers(p->num_buffers, buffers);
    alDeleteSources(1, &source);

    ALCcontext *ctx = alcGetCurrentContext();
    ALCdevice *dev = alcGetContextsDevice(ctx);
    alcMakeContextCurrent(((void*)0));
    alcDestroyContext(ctx);
    alcCloseDevice(dev);
    ao_data = ((void*)0);
}
