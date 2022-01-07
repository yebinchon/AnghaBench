
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PNTFS_ATTR_CONTEXT ;


 int FrLdrTempFree (int ,int ) ;
 int TAG_NTFS_CONTEXT ;

__attribute__((used)) static VOID NtfsReleaseAttributeContext(PNTFS_ATTR_CONTEXT Context)
{
    FrLdrTempFree(Context, TAG_NTFS_CONTEXT);
}
