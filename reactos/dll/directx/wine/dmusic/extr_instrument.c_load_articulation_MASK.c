#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int cConnections; } ;
struct TYPE_8__ {TYPE_3__ connections_list; TYPE_3__* connections; } ;
typedef  TYPE_1__ instrument_articulation ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_9__ {int nb_articulations; TYPE_1__* articulations; } ;
typedef  int /*<<< orphan*/  IStream ;
typedef  TYPE_2__ IDirectMusicInstrumentImpl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  CONNECTIONLIST ;
typedef  int /*<<< orphan*/  CONNECTION ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static HRESULT FUNC7(IDirectMusicInstrumentImpl *This, IStream *stream, ULONG length)
{
    HRESULT ret;
    instrument_articulation *articulation;

    if (!This->articulations)
        This->articulations = FUNC2(FUNC1(), 0, sizeof(*This->articulations));
    else
        This->articulations = FUNC4(FUNC1(), 0, This->articulations, sizeof(*This->articulations) * (This->nb_articulations + 1));
    if (!This->articulations)
        return E_OUTOFMEMORY;

    articulation = &This->articulations[This->nb_articulations];

    ret = FUNC5(stream, &articulation->connections_list, sizeof(CONNECTIONLIST));
    if (FUNC0(ret))
        return ret;

    articulation->connections = FUNC2(FUNC1(), 0, sizeof(CONNECTION) * articulation->connections_list.cConnections);
    if (!articulation->connections)
        return E_OUTOFMEMORY;

    ret = FUNC5(stream, articulation->connections, sizeof(CONNECTION) * articulation->connections_list.cConnections);
    if (FUNC0(ret))
    {
        FUNC3(FUNC1(), 0, articulation->connections);
        return ret;
    }

    FUNC6(length, sizeof(CONNECTIONLIST) + sizeof(CONNECTION) * articulation->connections_list.cConnections);

    This->nb_articulations++;

    return S_OK;
}