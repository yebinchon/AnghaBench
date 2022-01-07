
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int WAVEFORMATEX ;
typedef int ULONG ;
struct TYPE_20__ {int wBitsPerSample; int nAvgBytesPerSec; int nBlockAlign; int nSamplesPerSec; int nChannels; int wFormatTag; } ;
struct TYPE_17__ {int FormatSize; int SampleSize; int Specifier; int SubFormat; int MajorFormat; scalar_t__ Reserved; scalar_t__ Flags; } ;
struct TYPE_16__ {scalar_t__ cbSize; int wBitsPerSample; int nAvgBytesPerSec; int nBlockAlign; int nSamplesPerSec; int nChannels; int wFormatTag; } ;
struct TYPE_19__ {TYPE_5__ DataFormat; TYPE_4__ WaveFormatEx; } ;
struct TYPE_15__ {int PrioritySubClass; int PriorityClass; } ;
struct TYPE_14__ {scalar_t__ Flags; int Id; int Set; } ;
struct TYPE_13__ {scalar_t__ Flags; int Id; int Set; } ;
struct TYPE_18__ {TYPE_3__ Priority; int PinId; int * PinToHandle; TYPE_2__ Medium; TYPE_1__ Interface; } ;
typedef TYPE_6__* PKSPIN_CONNECT ;
typedef TYPE_7__* PKSDATAFORMAT_WAVEFORMATEX ;
typedef int PHANDLE ;
typedef TYPE_8__* LPWAVEFORMATEX ;
typedef int KSPIN_CONNECT ;
typedef int KSDATAFORMAT_WAVEFORMATEX ;
typedef int KSDATAFORMAT ;
typedef int HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int DSERR_OUTOFMEMORY ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_6__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_6__*) ;
 int KSDATAFORMAT_SPECIFIER_WAVEFORMATEX ;
 int KSDATAFORMAT_SUBTYPE_PCM ;
 int KSDATAFORMAT_TYPE_AUDIO ;
 int KSINTERFACESETID_Standard ;
 int KSINTERFACE_STANDARD_LOOPED_STREAMING ;
 int KSINTERFACE_STANDARD_STREAMING ;
 int KSMEDIUMSETID_Standard ;
 int KSMEDIUM_TYPE_ANYINSTANCE ;
 int KSPRIORITY_NORMAL ;
 int KsCreatePin (int ,TYPE_6__*,int,int ) ;

DWORD
OpenPin(
    HANDLE hFilter,
    ULONG PinId,
    LPWAVEFORMATEX WaveFormatEx,
    PHANDLE hPin,
    BOOL bLoop)
{
    DWORD Size, Result;
    PKSPIN_CONNECT PinConnect;
    PKSDATAFORMAT_WAVEFORMATEX DataFormat;


    Size = sizeof(KSPIN_CONNECT) + sizeof(KSDATAFORMAT_WAVEFORMATEX);

    PinConnect = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, Size);
    if (!PinConnect)
    {

        return DSERR_OUTOFMEMORY;
    }

    PinConnect->Interface.Set = KSINTERFACESETID_Standard;

    if (bLoop)
        PinConnect->Interface.Id = KSINTERFACE_STANDARD_LOOPED_STREAMING;
    else
        PinConnect->Interface.Id = KSINTERFACE_STANDARD_STREAMING;

    PinConnect->Interface.Flags = 0;
    PinConnect->Medium.Set = KSMEDIUMSETID_Standard;
    PinConnect->Medium.Id = KSMEDIUM_TYPE_ANYINSTANCE;
    PinConnect->Medium.Flags = 0;
    PinConnect->PinToHandle = ((void*)0);
    PinConnect->PinId = PinId;
    PinConnect->Priority.PriorityClass = KSPRIORITY_NORMAL;
    PinConnect->Priority.PrioritySubClass = 1;

    DataFormat = (PKSDATAFORMAT_WAVEFORMATEX) (PinConnect + 1);


    DataFormat->WaveFormatEx.wFormatTag = WaveFormatEx->wFormatTag;
    DataFormat->WaveFormatEx.nChannels = WaveFormatEx->nChannels;
    DataFormat->WaveFormatEx.nSamplesPerSec = WaveFormatEx->nSamplesPerSec;
    DataFormat->WaveFormatEx.nBlockAlign = WaveFormatEx->nBlockAlign;
    DataFormat->WaveFormatEx.nAvgBytesPerSec = WaveFormatEx->nAvgBytesPerSec;
    DataFormat->WaveFormatEx.wBitsPerSample = WaveFormatEx->wBitsPerSample;
    DataFormat->WaveFormatEx.cbSize = 0;
    DataFormat->DataFormat.FormatSize = sizeof(KSDATAFORMAT) + sizeof(WAVEFORMATEX);
    DataFormat->DataFormat.Flags = 0;
    DataFormat->DataFormat.Reserved = 0;
    DataFormat->DataFormat.MajorFormat = KSDATAFORMAT_TYPE_AUDIO;

    DataFormat->DataFormat.SubFormat = KSDATAFORMAT_SUBTYPE_PCM;
    DataFormat->DataFormat.Specifier = KSDATAFORMAT_SPECIFIER_WAVEFORMATEX;
    DataFormat->DataFormat.SampleSize = 4;

    Result = KsCreatePin(hFilter, PinConnect, GENERIC_READ | GENERIC_WRITE, hPin);

    HeapFree(GetProcessHeap(), 0, PinConnect);

    return Result;
}
