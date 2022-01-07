
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int working_dir; int install_sec; int inf_filename; int inf_path; int hinf; } ;
typedef TYPE_1__ ADVInfo ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 int SetupCloseInfFile (int ) ;

__attribute__((used)) static void install_release(const ADVInfo *info)
{
    SetupCloseInfFile(info->hinf);

    HeapFree(GetProcessHeap(), 0, info->inf_path);
    HeapFree(GetProcessHeap(), 0, info->inf_filename);
    HeapFree(GetProcessHeap(), 0, info->install_sec);
    HeapFree(GetProcessHeap(), 0, info->working_dir);
}
