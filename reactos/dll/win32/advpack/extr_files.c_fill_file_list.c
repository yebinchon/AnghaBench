
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct FILELIST {struct FILELIST* next; int DoExtract; int FileName; } ;
struct TYPE_4__ {int Operation; struct FILELIST* FileList; } ;
typedef TYPE_1__ SESSION ;
typedef int LPCSTR ;
typedef int DWORD ;


 int EXTRACT_FILLFILELIST ;
 int FALSE ;
 scalar_t__ S_OK ;
 int file_in_list (int ,int ) ;
 scalar_t__ pExtract (TYPE_1__*,int ) ;

__attribute__((used)) static DWORD fill_file_list(SESSION *session, LPCSTR szCabName, LPCSTR szFileList)
{
    DWORD dwNumFound = 0;
    struct FILELIST *pNode;

    session->Operation |= EXTRACT_FILLFILELIST;
    if (pExtract(session, szCabName) != S_OK)
    {
        session->Operation &= ~EXTRACT_FILLFILELIST;
        return -1;
    }

    pNode = session->FileList;
    while (pNode)
    {
        if (!file_in_list(pNode->FileName, szFileList))
            pNode->DoExtract = FALSE;
        else
            dwNumFound++;

        pNode = pNode->next;
    }

    session->Operation &= ~EXTRACT_FILLFILELIST;
    return dwNumFound;
}
