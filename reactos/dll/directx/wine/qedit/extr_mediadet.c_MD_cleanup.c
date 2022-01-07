
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_streams; scalar_t__ cur_stream; int * graph; int * splitter; int * source; int * cur_pin; } ;
typedef TYPE_1__ MediaDetImpl ;


 int IBaseFilter_Release (int *) ;
 int IGraphBuilder_Release (int *) ;
 int IPin_Release (int *) ;

__attribute__((used)) static void MD_cleanup(MediaDetImpl *This)
{
    if (This->cur_pin) IPin_Release(This->cur_pin);
    This->cur_pin = ((void*)0);
    if (This->source) IBaseFilter_Release(This->source);
    This->source = ((void*)0);
    if (This->splitter) IBaseFilter_Release(This->splitter);
    This->splitter = ((void*)0);
    if (This->graph) IGraphBuilder_Release(This->graph);
    This->graph = ((void*)0);
    This->num_streams = -1;
    This->cur_stream = 0;
}
