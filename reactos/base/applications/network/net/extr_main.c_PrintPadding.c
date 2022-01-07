
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int VOID ;
typedef size_t INT ;


 int ConPuts (int ,int *) ;
 int MAX_BUFFER_SIZE ;
 int StdOut ;
 int UNICODE_NULL ;

VOID
PrintPadding(
    WCHAR chr,
    INT nPaddedLength)
{
    INT i;
    WCHAR szMsgBuffer[MAX_BUFFER_SIZE];

    for (i = 0; i < nPaddedLength; i++)
         szMsgBuffer[i] = chr;
    szMsgBuffer[nPaddedLength] = UNICODE_NULL;

    ConPuts(StdOut, szMsgBuffer);
}
