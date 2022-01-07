
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCTSTR ;
typedef int BOOL ;


 int DUser ;
 int DenyUserAccess (int ,int ,int ) ;
 int EditUserAccessRights (int ,int ,int ,int ) ;
 int * GPerm ;
 int GUser ;
 int GrantUserAccessRights (int ,int ,int ,int ) ;
 scalar_t__ OptionD ;
 int OptionE ;
 scalar_t__ OptionG ;
 scalar_t__ OptionP ;
 scalar_t__ OptionR ;
 int * PPerm ;
 int PUser ;
 int RUser ;
 int ReplaceUserAccessRights (int ,int ,int ,int ) ;
 int RevokeUserAccessRights (int ,int ,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL
ChangeFileACL(LPCTSTR FilePath, LPCTSTR File)
{
    if (OptionG)
    {

        GrantUserAccessRights(FilePath, File, GUser, *GPerm);
    }

    if (OptionP)
    {
        if (!OptionE)
        {

            ReplaceUserAccessRights(FilePath, File, PUser, *PPerm);
        }
        else
        {

            EditUserAccessRights(FilePath, File, PUser, *PPerm);
        }
    }

    if (OptionD)
    {

        DenyUserAccess(FilePath, File, DUser);
    }

    if (OptionR)
    {

        RevokeUserAccessRights(FilePath, File, RUser);
    }

    return TRUE;
}
