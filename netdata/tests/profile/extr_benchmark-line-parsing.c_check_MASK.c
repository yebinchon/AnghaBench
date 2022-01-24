#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct entry {char const* name; int found; scalar_t__ hash; struct entry* next; struct entry* prev; int /*<<< orphan*/  data2; int /*<<< orphan*/  data1; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct base {scalar_t__ found; scalar_t__ registered; struct entry* entries; struct entry* last; } ;

/* Variables and functions */
 struct entry* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 
 char const* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC9(struct base *base, const char *s) {
  uint32_t hash = FUNC4(s);

  if(FUNC2(!FUNC5(s, base->last->name))) {
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

  // find it
  struct entry *e;
  for(e = base->entries; e ; e = e->next)
    if(e->hash == hash && !FUNC5(e->name, s))
      break;

  if(e == base->last) {
    FUNC3("ERROR\n");
    FUNC1(1);
  }

  if(e) {
    // found

    // run it
    if(e->func) e->func(e->data1, e->data2);

    // unlink it
    if(e->next) e->next->prev = e->prev;
    if(e->prev) e->prev->next = e->next;

    if(base->entries == e)
      base->entries = e->next;
  }
  else {
    // not found

    // create it
    e = FUNC0(1, sizeof(struct entry));
    e->name = FUNC6(s);
    e->hash = hash;
  }

  // link it here
  e->next = base->last;
  if(base->last) {
    e->prev = base->last->prev;
    base->last->prev = e;

    if(base->entries == base->last)
      base->entries = e;
  }
  else
    e->prev = NULL;

  if(e->prev)
    e->prev->next = e;

  base->last = e->next;
  if(!base->last)
    base->last = base->entries;

  e->found = 1;
  base->found++;

  if(base->found == base->registered)
    return 1;

  FUNC3("relinked '%s' after '%s' and before '%s': ", e->name, e->prev?e->prev->name:"NONE", e->next?e->next->name:"NONE");
  for(e = base->entries; e ; e = e->next) FUNC3("%s ", e->name);
  FUNC3("\n");

  return 0;
}