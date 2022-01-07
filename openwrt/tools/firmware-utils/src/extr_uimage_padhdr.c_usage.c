
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void usage(char *prog)
{
 fprintf(stderr,
  "%s -i <input_uimage_file> -o <output_file> [-l <padding bytes>]\n",
  prog);
}
