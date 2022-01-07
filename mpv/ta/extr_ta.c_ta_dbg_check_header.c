
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ta_header {scalar_t__ canary; } ;


 scalar_t__ CANARY ;
 int assert (int) ;

__attribute__((used)) static void ta_dbg_check_header(struct ta_header *h)
{
    if (h)
        assert(h->canary == CANARY);
}
