
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FILELIST {struct FILELIST* FileName; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct FILELIST*) ;

__attribute__((used)) static void free_file_node(struct FILELIST *pNode)
{
    HeapFree(GetProcessHeap(), 0, pNode->FileName);
    HeapFree(GetProcessHeap(), 0, pNode);
}
