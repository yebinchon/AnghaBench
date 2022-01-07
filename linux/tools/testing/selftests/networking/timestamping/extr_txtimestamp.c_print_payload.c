
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void print_payload(char *data, int len)
{
 int i;

 if (!len)
  return;

 if (len > 70)
  len = 70;

 fprintf(stderr, "payload: ");
 for (i = 0; i < len; i++)
  fprintf(stderr, "%02hhx ", data[i]);
 fprintf(stderr, "\n");
}
