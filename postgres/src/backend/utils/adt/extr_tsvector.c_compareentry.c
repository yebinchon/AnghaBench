
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t pos; int len; } ;
struct TYPE_4__ {TYPE_1__ entry; } ;
typedef TYPE_2__ WordEntryIN ;


 int tsCompareString (char*,int ,char*,int ,int) ;

__attribute__((used)) static int
compareentry(const void *va, const void *vb, void *arg)
{
 const WordEntryIN *a = (const WordEntryIN *) va;
 const WordEntryIN *b = (const WordEntryIN *) vb;
 char *BufferStr = (char *) arg;

 return tsCompareString(&BufferStr[a->entry.pos], a->entry.len,
         &BufferStr[b->entry.pos], b->entry.len,
         0);
}
