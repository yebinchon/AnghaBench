
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

void usage(void)
{
 fprintf(stderr, "Usage:\n");
 fprintf(stderr, " trx [-2] [-o outfile] [-m maxlen] [-a align] [-b absolute offset] [-x relative offset]\n");
 fprintf(stderr, "     [-f file] [-f file [-f file [-f file (v2 only)]]]\n");
 exit(EXIT_FAILURE);
}
