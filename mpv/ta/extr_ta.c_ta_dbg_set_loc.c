
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ta_header {char const* name; } ;


 struct ta_header* get_header (void*) ;

void *ta_dbg_set_loc(void *ptr, const char *loc)
{
    struct ta_header *h = get_header(ptr);
    if (h)
        h->name = loc;
    return ptr;
}
