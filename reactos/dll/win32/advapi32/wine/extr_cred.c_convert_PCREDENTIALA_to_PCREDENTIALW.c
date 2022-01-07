
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_6__ {scalar_t__ UserName; scalar_t__ TargetAlias; int Persist; scalar_t__ CredentialBlobSize; int CredentialBlob; int LastWritten; scalar_t__ Comment; scalar_t__ TargetName; int Type; int Flags; } ;
struct TYPE_5__ {int * UserName; int * TargetAlias; int * Attributes; scalar_t__ AttributeCount; int Persist; int * CredentialBlob; scalar_t__ CredentialBlobSize; int LastWritten; int * Comment; int * TargetName; int Type; int Flags; } ;
typedef TYPE_1__* PCREDENTIALW ;
typedef void* LPWSTR ;
typedef int * LPBYTE ;
typedef int INT ;
typedef int CREDENTIALW ;
typedef TYPE_2__ CREDENTIALA ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,scalar_t__,int,int *,int) ;
 int memcpy (int *,int ,scalar_t__) ;

__attribute__((used)) static INT convert_PCREDENTIALA_to_PCREDENTIALW(const CREDENTIALA *CredentialA, PCREDENTIALW CredentialW, INT len)
{
    char *buffer;
    INT string_len;
    INT needed = sizeof(CREDENTIALW);

    if (!CredentialW)
    {
        if (CredentialA->TargetName)
            needed += sizeof(WCHAR) * MultiByteToWideChar(CP_ACP, 0, CredentialA->TargetName, -1, ((void*)0), 0);
        if (CredentialA->Comment)
            needed += sizeof(WCHAR) * MultiByteToWideChar(CP_ACP, 0, CredentialA->Comment, -1, ((void*)0), 0);
        needed += CredentialA->CredentialBlobSize;
        if (CredentialA->TargetAlias)
            needed += sizeof(WCHAR) * MultiByteToWideChar(CP_ACP, 0, CredentialA->TargetAlias, -1, ((void*)0), 0);
        if (CredentialA->UserName)
            needed += sizeof(WCHAR) * MultiByteToWideChar(CP_ACP, 0, CredentialA->UserName, -1, ((void*)0), 0);

        return needed;
    }

    buffer = (char *)CredentialW + sizeof(CREDENTIALW);
    len -= sizeof(CREDENTIALW);
    CredentialW->Flags = CredentialA->Flags;
    CredentialW->Type = CredentialA->Type;
    if (CredentialA->TargetName)
    {
        CredentialW->TargetName = (LPWSTR)buffer;
        string_len = MultiByteToWideChar(CP_ACP, 0, CredentialA->TargetName, -1, CredentialW->TargetName, len / sizeof(WCHAR));
        buffer += sizeof(WCHAR) * string_len;
        needed += sizeof(WCHAR) * string_len;
        len -= sizeof(WCHAR) * string_len;
    }
    else
        CredentialW->TargetName = ((void*)0);
    if (CredentialA->Comment)
    {
        CredentialW->Comment = (LPWSTR)buffer;
        string_len = MultiByteToWideChar(CP_ACP, 0, CredentialA->Comment, -1, CredentialW->Comment, len / sizeof(WCHAR));
        buffer += sizeof(WCHAR) * string_len;
        needed += sizeof(WCHAR) * string_len;
        len -= sizeof(WCHAR) * string_len;
    }
    else
        CredentialW->Comment = ((void*)0);
    CredentialW->LastWritten = CredentialA->LastWritten;
    CredentialW->CredentialBlobSize = CredentialA->CredentialBlobSize;
    if (CredentialA->CredentialBlobSize)
    {
        CredentialW->CredentialBlob =(LPBYTE)buffer;
        memcpy(CredentialW->CredentialBlob, CredentialA->CredentialBlob,
               CredentialA->CredentialBlobSize);
        buffer += CredentialA->CredentialBlobSize;
        needed += CredentialA->CredentialBlobSize;
        len -= CredentialA->CredentialBlobSize;
    }
    else
        CredentialW->CredentialBlob = ((void*)0);
    CredentialW->Persist = CredentialA->Persist;
    CredentialW->AttributeCount = 0;
    CredentialW->Attributes = ((void*)0);
    if (CredentialA->TargetAlias)
    {
        CredentialW->TargetAlias = (LPWSTR)buffer;
        string_len = MultiByteToWideChar(CP_ACP, 0, CredentialA->TargetAlias, -1, CredentialW->TargetAlias, len / sizeof(WCHAR));
        buffer += sizeof(WCHAR) * string_len;
        needed += sizeof(WCHAR) * string_len;
        len -= sizeof(WCHAR) * string_len;
    }
    else
        CredentialW->TargetAlias = ((void*)0);
    if (CredentialA->UserName)
    {
        CredentialW->UserName = (LPWSTR)buffer;
        string_len = MultiByteToWideChar(CP_ACP, 0, CredentialA->UserName, -1, CredentialW->UserName, len / sizeof(WCHAR));
        needed += sizeof(WCHAR) * string_len;
    }
    else
        CredentialW->UserName = ((void*)0);

    return needed;
}
