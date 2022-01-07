
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {void (* func ) (void*,void*) ;struct entry* prev; struct entry* next; void* data2; void* data1; int name; int hash; } ;
struct base {scalar_t__ registered; scalar_t__ wanted; struct entry* entries; struct entry* last; } ;


 struct base* calloc (int,int) ;
 struct entry* malloc (int) ;
 int simple_hash2 (int ) ;
 int strdup (char const*) ;

__attribute__((used)) static inline struct base *entry(struct base *base, const char *name, void *data1, void *data2, void (*func)(void *, void *)) {
  if(!base)
    base = calloc(1, sizeof(struct base));

  struct entry *e = malloc(sizeof(struct entry));
  e->name = strdup(name);
  e->hash = simple_hash2(e->name);
  e->data1 = data1;
  e->data2 = data2;
  e->func = func;
  e->prev = ((void*)0);
  e->next = base->entries;

  if(base->entries) base->entries->prev = e;
  else base->last = e;

  base->entries = e;
  base->registered++;
  base->wanted = base->registered;

  return base;
}
