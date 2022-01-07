
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
print_help (void)
{
 fprintf (stderr, "Usage: mkchkimg -o output -k kernel [-f filesys] [-b board_id] [-r region]\n");
}
