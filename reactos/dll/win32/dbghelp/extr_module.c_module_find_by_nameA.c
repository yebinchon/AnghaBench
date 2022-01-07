
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wname ;
struct process {int dummy; } ;
struct module {int dummy; } ;
typedef int WCHAR ;


 int CP_ACP ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 struct module* module_find_by_nameW (struct process const*,int *) ;

struct module* module_find_by_nameA(const struct process* pcs, const char* name)
{
    WCHAR wname[MAX_PATH];

    MultiByteToWideChar(CP_ACP, 0, name, -1, wname, sizeof(wname) / sizeof(WCHAR));
    return module_find_by_nameW(pcs, wname);
}
