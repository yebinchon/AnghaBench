
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* lpstrCustomFilter; void* lpstrFile; void* lpstrFileTitle; scalar_t__ lpTemplateName; scalar_t__ lpstrTitle; scalar_t__ lpstrInitialDir; scalar_t__ lpstrFilter; } ;
typedef TYPE_1__ OPENFILENAMEW ;


 int IS_INTRESOURCE (scalar_t__) ;
 int heap_free (void*) ;

__attribute__((used)) static void FD31_FreeOfnW(OPENFILENAMEW *ofnW)
{
    heap_free((void *)ofnW->lpstrFilter);
    heap_free(ofnW->lpstrCustomFilter);
    heap_free(ofnW->lpstrFile);
    heap_free(ofnW->lpstrFileTitle);
    heap_free((void *)ofnW->lpstrInitialDir);
    heap_free((void *)ofnW->lpstrTitle);
    if (!IS_INTRESOURCE(ofnW->lpTemplateName))
        heap_free((void *)ofnW->lpTemplateName);
}
