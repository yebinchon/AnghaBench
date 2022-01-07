
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* pLinkedList_t ;
typedef TYPE_2__* pFileCache_t ;
struct TYPE_6__ {TYPE_1__* list; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;


 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static void filecache_free (pFileCache_t cache) {
 pLinkedList_t this = cache->list, next;

 while (this != ((void*)0)) {
  next = this->next;
  sqlite3_free (this);
  this = next;
 }
}
