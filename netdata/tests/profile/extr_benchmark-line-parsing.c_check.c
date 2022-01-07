
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct entry {char const* name; int found; scalar_t__ hash; struct entry* next; struct entry* prev; int data2; int data1; int (* func ) (int ,int ) ;} ;
struct base {scalar_t__ found; scalar_t__ registered; struct entry* entries; struct entry* last; } ;


 struct entry* calloc (int,int) ;
 int exit (int) ;
 scalar_t__ likely (int) ;
 int printf (char*,...) ;
 scalar_t__ simple_hash2 (char const*) ;
 int strcmp (char const*,char const*) ;
 char const* strdup (char const*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static inline int check(struct base *base, const char *s) {
  uint32_t hash = simple_hash2(s);

  if(likely(!strcmp(s, base->last->name))) {
    base->last->found = 1;
    base->found++;
    if(base->last->func) base->last->func(base->last->data1, base->last->data2);
    base->last = base->last->next;

    if(!base->last)
      base->last = base->entries;

    if(base->found == base->registered)
      return 1;

    return 0;
  }


  struct entry *e;
  for(e = base->entries; e ; e = e->next)
    if(e->hash == hash && !strcmp(e->name, s))
      break;

  if(e == base->last) {
    printf("ERROR\n");
    exit(1);
  }

  if(e) {



    if(e->func) e->func(e->data1, e->data2);


    if(e->next) e->next->prev = e->prev;
    if(e->prev) e->prev->next = e->next;

    if(base->entries == e)
      base->entries = e->next;
  }
  else {



    e = calloc(1, sizeof(struct entry));
    e->name = strdup(s);
    e->hash = hash;
  }


  e->next = base->last;
  if(base->last) {
    e->prev = base->last->prev;
    base->last->prev = e;

    if(base->entries == base->last)
      base->entries = e;
  }
  else
    e->prev = ((void*)0);

  if(e->prev)
    e->prev->next = e;

  base->last = e->next;
  if(!base->last)
    base->last = base->entries;

  e->found = 1;
  base->found++;

  if(base->found == base->registered)
    return 1;

  printf("relinked '%s' after '%s' and before '%s': ", e->name, e->prev?e->prev->name:"NONE", e->next?e->next->name:"NONE");
  for(e = base->entries; e ; e = e->next) printf("%s ", e->name);
  printf("\n");

  return 0;
}
