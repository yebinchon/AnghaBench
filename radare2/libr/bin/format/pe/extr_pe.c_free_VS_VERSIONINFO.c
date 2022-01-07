
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stringFileInfo; int varFileInfo; struct TYPE_4__* Value; struct TYPE_4__* szKey; } ;
typedef TYPE_1__ PE_VS_VERSIONINFO ;


 int free (TYPE_1__*) ;
 int free_StringFileInfo (int ) ;
 int free_VarFileInfo (int ) ;

__attribute__((used)) static void free_VS_VERSIONINFO(PE_VS_VERSIONINFO* vs_VersionInfo) {
 if (vs_VersionInfo) {
  free (vs_VersionInfo->szKey);
  free (vs_VersionInfo->Value);
  free_VarFileInfo (vs_VersionInfo->varFileInfo);
  free_StringFileInfo (vs_VersionInfo->stringFileInfo);
  free (vs_VersionInfo);
 }
}
