
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* examples ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void usage(void)
{
 fprintf(stderr, "\nUsage: ./userfaultfd <test type> <MiB> <bounces> "
  "[hugetlbfs_file]\n\n");
 fprintf(stderr, "Supported <test type>: anon, hugetlb, "
  "hugetlb_shared, shmem\n\n");
 fprintf(stderr, "Examples:\n\n");
 fprintf(stderr, "%s", examples);
 exit(1);
}
