
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IDirectMusicPort ;
typedef int IDirectMusic8Impl ;
typedef int HRESULT ;
typedef int DMUS_PORTPARAMS ;
typedef int DMUS_PORTCAPS ;


 int TRACE (char*,int *,int *,int *,int **) ;
 int midi_port_create (int *,int *,int *,int **) ;

HRESULT midi_out_port_create(IDirectMusic8Impl *parent, DMUS_PORTPARAMS *params,
        DMUS_PORTCAPS *caps, IDirectMusicPort **port)
{
    TRACE("(%p, %p, %p, %p)\n", parent, params, caps, port);

    return midi_port_create(parent, params, caps, port);
}
