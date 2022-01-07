
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csum_state {int size; scalar_t__ odd; scalar_t__ tmp; scalar_t__ val; } ;



void
csum_init(struct csum_state *css, int size)
{
 css->val = 0;
 css->tmp = 0;
 css->odd = 0;
 css->size = size;
}
