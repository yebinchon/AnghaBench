#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int idx; TYPE_2__* data; struct TYPE_6__* next; } ;
typedef  TYPE_1__ fcgi_hash_buckets ;
struct TYPE_7__ {unsigned int hash_value; unsigned int var_len; unsigned int val_len; char* val; void* var; struct TYPE_7__* list_next; struct TYPE_7__* next; } ;
typedef  TYPE_2__ fcgi_hash_bucket ;
struct TYPE_8__ {TYPE_2__* list; TYPE_2__** hash_table; TYPE_1__* buckets; } ;
typedef  TYPE_3__ fcgi_hash ;

/* Variables and functions */
 unsigned int FCGI_HASH_TABLE_MASK ; 
 int FCGI_HASH_TABLE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 void* FUNC1 (TYPE_3__*,char*,unsigned int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (void*,char*,unsigned int) ; 

__attribute__((used)) static char* FUNC4(fcgi_hash *h, unsigned int hash_value, char *var, unsigned int var_len, char *val, unsigned int val_len)
{
	unsigned int      idx = hash_value & FCGI_HASH_TABLE_MASK;
	fcgi_hash_bucket *p = h->hash_table[idx];

	while (FUNC0(p != NULL)) {
		if (FUNC0(p->hash_value == hash_value) &&
		    p->var_len == var_len &&
		    FUNC3(p->var, var, var_len) == 0) {

			p->val_len = val_len;
			p->val = FUNC1(h, val, val_len);
			return p->val;
		}
		p = p->next;
	}

	if (FUNC0(h->buckets->idx >= FCGI_HASH_TABLE_SIZE)) {
		fcgi_hash_buckets *b = (fcgi_hash_buckets*)FUNC2(sizeof(fcgi_hash_buckets));
		b->idx = 0;
		b->next = h->buckets;
		h->buckets = b;
	}
	p = h->buckets->data + h->buckets->idx;
	h->buckets->idx++;
	p->next = h->hash_table[idx];
	h->hash_table[idx] = p;
	p->list_next = h->list;
	h->list = p;
	p->hash_value = hash_value;
	p->var_len = var_len;
	p->var = FUNC1(h, var, var_len);
	p->val_len = val_len;
	p->val = FUNC1(h, val, val_len);
	return p->val;
}