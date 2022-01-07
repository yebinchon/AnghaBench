
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* prev; struct TYPE_4__* next; } ;
typedef TYPE_1__ TocEntry ;
typedef int ArchiveHandle ;



__attribute__((used)) static void
_moveBefore(ArchiveHandle *AH, TocEntry *pos, TocEntry *te)
{

 te->prev->next = te->next;
 te->next->prev = te->prev;


 te->prev = pos->prev;
 te->next = pos;
 pos->prev->next = te;
 pos->prev = te;
}
