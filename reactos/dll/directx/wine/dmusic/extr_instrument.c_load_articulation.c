
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int cConnections; } ;
struct TYPE_8__ {TYPE_3__ connections_list; TYPE_3__* connections; } ;
typedef TYPE_1__ instrument_articulation ;
typedef int ULONG ;
struct TYPE_9__ {int nb_articulations; TYPE_1__* articulations; } ;
typedef int IStream ;
typedef TYPE_2__ IDirectMusicInstrumentImpl ;
typedef int HRESULT ;
typedef int CONNECTIONLIST ;
typedef int CONNECTION ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 TYPE_1__* HeapReAlloc (int ,int ,TYPE_1__*,int) ;
 int S_OK ;
 int read_from_stream (int *,TYPE_3__*,int) ;
 int subtract_bytes (int ,int) ;

__attribute__((used)) static HRESULT load_articulation(IDirectMusicInstrumentImpl *This, IStream *stream, ULONG length)
{
    HRESULT ret;
    instrument_articulation *articulation;

    if (!This->articulations)
        This->articulations = HeapAlloc(GetProcessHeap(), 0, sizeof(*This->articulations));
    else
        This->articulations = HeapReAlloc(GetProcessHeap(), 0, This->articulations, sizeof(*This->articulations) * (This->nb_articulations + 1));
    if (!This->articulations)
        return E_OUTOFMEMORY;

    articulation = &This->articulations[This->nb_articulations];

    ret = read_from_stream(stream, &articulation->connections_list, sizeof(CONNECTIONLIST));
    if (FAILED(ret))
        return ret;

    articulation->connections = HeapAlloc(GetProcessHeap(), 0, sizeof(CONNECTION) * articulation->connections_list.cConnections);
    if (!articulation->connections)
        return E_OUTOFMEMORY;

    ret = read_from_stream(stream, articulation->connections, sizeof(CONNECTION) * articulation->connections_list.cConnections);
    if (FAILED(ret))
    {
        HeapFree(GetProcessHeap(), 0, articulation->connections);
        return ret;
    }

    subtract_bytes(length, sizeof(CONNECTIONLIST) + sizeof(CONNECTION) * articulation->connections_list.cConnections);

    This->nb_articulations++;

    return S_OK;
}
