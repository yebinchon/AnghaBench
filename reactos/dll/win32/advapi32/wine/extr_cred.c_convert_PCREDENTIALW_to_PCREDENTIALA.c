
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ CredentialBlobSize; scalar_t__ UserName; scalar_t__ TargetAlias; int Persist; int CredentialBlob; int LastWritten; scalar_t__ Comment; scalar_t__ TargetName; int Type; int Flags; } ;
struct TYPE_5__ {char* TargetName; char* Comment; scalar_t__ CredentialBlobSize; char* TargetAlias; char* UserName; int * Attributes; scalar_t__ AttributeCount; int Persist; int * CredentialBlob; int LastWritten; int Type; int Flags; } ;
typedef TYPE_1__* PCREDENTIALA ;
typedef int * LPBYTE ;
typedef scalar_t__ INT ;
typedef scalar_t__ DWORD ;
typedef TYPE_2__ CREDENTIALW ;
typedef int CREDENTIALA ;


 int CP_ACP ;
 scalar_t__ WideCharToMultiByte (int ,int ,scalar_t__,int,char*,scalar_t__,int *,int *) ;
 int memcpy (int *,int ,scalar_t__) ;

__attribute__((used)) static INT convert_PCREDENTIALW_to_PCREDENTIALA(const CREDENTIALW *CredentialW, PCREDENTIALA CredentialA, DWORD len)
{
    char *buffer;
    INT string_len;
    INT needed = sizeof(CREDENTIALA);

    if (!CredentialA)
    {
        if (CredentialW->TargetName)
            needed += WideCharToMultiByte(CP_ACP, 0, CredentialW->TargetName, -1, ((void*)0), 0, ((void*)0), ((void*)0));
        if (CredentialW->Comment)
            needed += WideCharToMultiByte(CP_ACP, 0, CredentialW->Comment, -1, ((void*)0), 0, ((void*)0), ((void*)0));
        needed += CredentialW->CredentialBlobSize;
        if (CredentialW->TargetAlias)
            needed += WideCharToMultiByte(CP_ACP, 0, CredentialW->TargetAlias, -1, ((void*)0), 0, ((void*)0), ((void*)0));
        if (CredentialW->UserName)
            needed += WideCharToMultiByte(CP_ACP, 0, CredentialW->UserName, -1, ((void*)0), 0, ((void*)0), ((void*)0));

        return needed;
    }


    buffer = (char *)CredentialA + sizeof(CREDENTIALA);
    len -= sizeof(CREDENTIALA);
    CredentialA->Flags = CredentialW->Flags;
    CredentialA->Type = CredentialW->Type;

    if (CredentialW->TargetName)
    {
        CredentialA->TargetName = buffer;
        string_len = WideCharToMultiByte(CP_ACP, 0, CredentialW->TargetName, -1, buffer, len, ((void*)0), ((void*)0));
        buffer += string_len;
        needed += string_len;
        len -= string_len;
    }
    else
        CredentialA->TargetName = ((void*)0);
    if (CredentialW->Comment)
    {
        CredentialA->Comment = buffer;
        string_len = WideCharToMultiByte(CP_ACP, 0, CredentialW->Comment, -1, buffer, len, ((void*)0), ((void*)0));
        buffer += string_len;
        needed += string_len;
        len -= string_len;
    }
    else
        CredentialA->Comment = ((void*)0);
    CredentialA->LastWritten = CredentialW->LastWritten;
    CredentialA->CredentialBlobSize = CredentialW->CredentialBlobSize;
    if (CredentialW->CredentialBlobSize && (CredentialW->CredentialBlobSize <= len))
    {
        CredentialA->CredentialBlob =(LPBYTE)buffer;
        memcpy(CredentialA->CredentialBlob, CredentialW->CredentialBlob,
               CredentialW->CredentialBlobSize);
        buffer += CredentialW->CredentialBlobSize;
        needed += CredentialW->CredentialBlobSize;
        len -= CredentialW->CredentialBlobSize;
    }
    else
        CredentialA->CredentialBlob = ((void*)0);
    CredentialA->Persist = CredentialW->Persist;
    CredentialA->AttributeCount = 0;
    CredentialA->Attributes = ((void*)0);
    if (CredentialW->TargetAlias)
    {
        CredentialA->TargetAlias = buffer;
        string_len = WideCharToMultiByte(CP_ACP, 0, CredentialW->TargetAlias, -1, buffer, len, ((void*)0), ((void*)0));
        buffer += string_len;
        needed += string_len;
        len -= string_len;
    }
    else
        CredentialA->TargetAlias = ((void*)0);
    if (CredentialW->UserName)
    {
        CredentialA->UserName = buffer;
        string_len = WideCharToMultiByte(CP_ACP, 0, CredentialW->UserName, -1, buffer, len, ((void*)0), ((void*)0));
        needed += string_len;
    }
    else
        CredentialA->UserName = ((void*)0);

    return needed;
}
