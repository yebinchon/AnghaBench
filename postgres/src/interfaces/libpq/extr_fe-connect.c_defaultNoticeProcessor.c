
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void
defaultNoticeProcessor(void *arg, const char *message)
{
 (void) arg;

 fprintf(stderr, "%s", message);
}
