
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct csum_state {int val; } ;



uint32_t
csum32_get(struct csum_state *css)
{
 return css->val;
}
