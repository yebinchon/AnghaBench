
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ hash_get_num_entries (int *) ;
 int * invalid_page_tab ;

bool
XLogHaveInvalidPages(void)
{
 if (invalid_page_tab != ((void*)0) &&
  hash_get_num_entries(invalid_page_tab) > 0)
  return 1;
 return 0;
}
