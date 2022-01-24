#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct _ht {unsigned int count; TYPE_1__* chain; } ;
struct TYPE_6__ {unsigned int htsize; unsigned int count; TYPE_1__* first; struct _ht* ht; } ;
struct TYPE_5__ {struct TYPE_5__* next; int /*<<< orphan*/  pKey; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ HashElem ;
typedef  TYPE_2__ Hash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 unsigned int FUNC2 (char const*) ; 

__attribute__((used)) static HashElem *FUNC3(
  const Hash *pH,     /* The pH to be searched */
  const char *pKey,   /* The key we are searching for */
  unsigned int *pHash /* Write the hash value here */
){
  HashElem *elem;                /* Used to loop thru the element list */
  unsigned int count;            /* Number of elements left to test */
  unsigned int h;                /* The computed hash */
  static HashElem nullElement = { 0, 0, 0, 0 };

  if( pH->ht ){   /*OPTIMIZATION-IF-TRUE*/
    struct _ht *pEntry;
    h = FUNC2(pKey) % pH->htsize;
    pEntry = &pH->ht[h];
    elem = pEntry->chain;
    count = pEntry->count;
  }else{
    h = 0;
    elem = pH->first;
    count = pH->count;
  }
  if( pHash ) *pHash = h;
  while( count-- ){
    FUNC0( elem!=0 );
    if( FUNC1(elem->pKey,pKey)==0 ){ 
      return elem;
    }
    elem = elem->next;
  }
  return &nullElement;
}