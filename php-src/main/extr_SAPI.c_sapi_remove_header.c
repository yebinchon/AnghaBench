
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* prev; struct TYPE_9__* next; scalar_t__ data; } ;
typedef TYPE_2__ zend_llist_element ;
struct TYPE_10__ {int count; TYPE_1__* tail; TYPE_2__* head; } ;
typedef TYPE_3__ zend_llist ;
struct TYPE_11__ {size_t header_len; char* header; } ;
typedef TYPE_4__ sapi_header_struct ;
struct TYPE_8__ {TYPE_2__* next; } ;


 int efree (TYPE_2__*) ;
 int sapi_free_header (TYPE_4__*) ;
 int strncasecmp (char*,char*,size_t) ;

__attribute__((used)) static void sapi_remove_header(zend_llist *l, char *name, size_t len) {
 sapi_header_struct *header;
 zend_llist_element *next;
 zend_llist_element *current=l->head;

 while (current) {
  header = (sapi_header_struct *)(current->data);
  next = current->next;
  if (header->header_len > len && header->header[len] == ':'
    && !strncasecmp(header->header, name, len)) {
   if (current->prev) {
    current->prev->next = next;
   } else {
    l->head = next;
   }
   if (next) {
    next->prev = current->prev;
   } else {
    l->tail = current->prev;
   }
   sapi_free_header(header);
   efree(current);
   --l->count;
  }
  current = next;
 }
}
