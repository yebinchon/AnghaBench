
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rclist; int cclist; } ;
typedef TYPE_1__ InvalidationListHeader ;


 int AppendInvalidationMessageList (int *,int *) ;

__attribute__((used)) static void
AppendInvalidationMessages(InvalidationListHeader *dest,
         InvalidationListHeader *src)
{
 AppendInvalidationMessageList(&dest->cclist, &src->cclist);
 AppendInvalidationMessageList(&dest->rclist, &src->rclist);
}
