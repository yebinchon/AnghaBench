
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {TYPE_1__* Lines; } ;
struct TYPE_6__ {struct TYPE_6__* Next; struct TYPE_6__* Controls; struct TYPE_6__* Connections; } ;
typedef TYPE_1__* PSND_MIXER_DESTINATION ;
typedef TYPE_1__* PSND_MIXER_CONNECTION ;
typedef TYPE_3__* PSND_MIXER ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;

__attribute__((used)) static VOID
ClearMixerCache(PSND_MIXER Mixer)
{
    PSND_MIXER_DESTINATION Line, NextLine;
    PSND_MIXER_CONNECTION Con, NextCon;

    for (Line = Mixer->Lines; Line != ((void*)0); Line = NextLine)
    {
        if (Line->Controls != ((void*)0))
        {
            HeapFree(GetProcessHeap(),
                     0,
                     Line->Controls);
        }

        for (Con = Line->Connections; Con != ((void*)0); Con = NextCon)
        {
            if (Con->Controls != ((void*)0))
            {
                HeapFree(GetProcessHeap(),
                         0,
                         Con->Controls);
            }

            NextCon = Con->Next;
            HeapFree(GetProcessHeap(),
                     0,
                     Con);
        }

        NextLine = Line->Next;
        HeapFree(GetProcessHeap(),
                 0,
                 Line);
    }
    Mixer->Lines = ((void*)0);
}
