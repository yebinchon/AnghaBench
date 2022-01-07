
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef int* PULONG ;
typedef int * PUCHAR ;
typedef int DWORD ;


 int ASSERT (int ) ;
 int RtlMoveMemory (int *,int *,int) ;
 scalar_t__ TRUE ;
 int UNIMPLEMENTED ;

VOID
PerformChannelConversion(
    PUCHAR Buffer,
    ULONG BufferLength,
    PULONG BytesRead,
    ULONG OldChannels,
    ULONG NewChannels,
    ULONG BitsPerSample,
    PUCHAR Result,
    ULONG ResultLength,
    PULONG BytesWritten)
{
    DWORD NewIndex, OldIndex;
    DWORD NewLength, Skip;

    if (NewChannels > OldChannels)
    {
        UNIMPLEMENTED;
        ASSERT(0);
    }


    NewIndex = 0;
    OldIndex = 0;


    NewLength = NewChannels * (BitsPerSample/8);
    Skip = OldChannels * (BitsPerSample/8);

    do
    {
        if (NewIndex + NewLength>= ResultLength)
        {
            NewIndex = ResultLength;
            break;
        }

        if (OldIndex + Skip >= BufferLength)
        {
            OldIndex = BufferLength;
            break;
        }


        RtlMoveMemory(&Result[NewIndex], &Buffer[OldIndex], NewLength);


        OldIndex += Skip;


        NewIndex += NewLength;

    }while(TRUE);

    *BytesRead = OldIndex;
    *BytesWritten = NewIndex;
}
