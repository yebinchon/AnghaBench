#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* key; struct TYPE_5__* value; } ;
typedef  TYPE_1__ header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static header_t *FUNC2(header_t *headers, int new_size) {
  if(headers) {
    for(header_t *header = headers; header->key; header++) {
      FUNC0(header->value);
      FUNC0(header->key);
    }
    FUNC0(headers);
  }
  if(!new_size)
    return NULL;
  return (header_t *)FUNC1(sizeof(header_t) * (new_size + 1));
}