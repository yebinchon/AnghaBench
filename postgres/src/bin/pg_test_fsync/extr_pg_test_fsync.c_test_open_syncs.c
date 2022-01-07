
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int printf (char*) ;
 int test_open_sync (char*,int) ;

__attribute__((used)) static void
test_open_syncs(void)
{
 printf(_("\nCompare open_sync with different write sizes:\n"));
 printf(_("(This is designed to compare the cost of writing 16kB in different write\n"
    "open_sync sizes.)\n"));

 test_open_sync(_(" 1 * 16kB open_sync write"), 16);
 test_open_sync(_(" 2 *  8kB open_sync writes"), 8);
 test_open_sync(_(" 4 *  4kB open_sync writes"), 4);
 test_open_sync(_(" 8 *  2kB open_sync writes"), 2);
 test_open_sync(_("16 *  1kB open_sync writes"), 1);
}
