
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ta_header {int dummy; } ;


 struct ta_header* PTR_TO_HEADER (void*) ;
 int ta_dbg_check_header (struct ta_header*) ;

__attribute__((used)) static struct ta_header *get_header(void *ptr)
{
    struct ta_header *h = ptr ? PTR_TO_HEADER(ptr) : ((void*)0);
    ta_dbg_check_header(h);
    return h;
}
