
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct FILELIST {struct FILELIST* next; } ;
struct TYPE_3__ {struct FILELIST* FileList; } ;
typedef TYPE_1__ SESSION ;


 int free_file_node (struct FILELIST*) ;

__attribute__((used)) static void free_file_list(SESSION* session)
{
    struct FILELIST *next, *curr = session->FileList;

    while (curr)
    {
        next = curr->next;
        free_file_node(curr);
        curr = next;
    }
}
