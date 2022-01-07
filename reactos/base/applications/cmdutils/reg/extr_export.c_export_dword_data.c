
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int DWORD ;


 char* heap_xalloc (int) ;
 int sprintfW (char*,char const*,int ) ;

__attribute__((used)) static void export_dword_data(WCHAR **buf, DWORD *data)
{
    static const WCHAR fmt[] = {'d','w','o','r','d',':','%','0','8','x',0};

    *buf = heap_xalloc(15 * sizeof(WCHAR));
    sprintfW(*buf, fmt, *data);
}
