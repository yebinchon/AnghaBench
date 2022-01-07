
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int UINT ;
typedef scalar_t__ INT ;


 scalar_t__ ConResPuts (int ,int ) ;
 int PrintPadding (int,scalar_t__) ;
 int StdOut ;

VOID
PrintPaddedResourceString(
    UINT uID,
    INT nPaddedLength)
{
    INT nLength;

    nLength = ConResPuts(StdOut, uID);
    if (nLength < nPaddedLength)
        PrintPadding(L' ', nPaddedLength - nLength);
}
