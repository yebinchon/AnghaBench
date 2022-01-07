
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testdev {char* name; int ifnum; struct testdev* next; int speed; } ;
struct stat {int dummy; } ;
typedef int FILE ;


 int FTW_F ;
 struct testdev* calloc (int,int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char*,char*,int) ;
 int free (struct testdev*) ;
 int perror (char const*) ;
 char* speed (int ) ;
 int stderr ;
 char* strdup (char const*) ;
 int testdev_ifnum (int *) ;
 struct testdev* testdevs ;

__attribute__((used)) static int find_testdev(const char *name, const struct stat *sb, int flag)
{
 FILE *fd;
 int ifnum;
 struct testdev *entry;

 (void)sb;

 if (flag != FTW_F)
  return 0;

 fd = fopen(name, "rb");
 if (!fd) {
  perror(name);
  return 0;
 }

 ifnum = testdev_ifnum(fd);
 fclose(fd);
 if (ifnum < 0)
  return 0;

 entry = calloc(1, sizeof *entry);
 if (!entry)
  goto nomem;

 entry->name = strdup(name);
 if (!entry->name) {
  free(entry);
nomem:
  perror("malloc");
  return 0;
 }

 entry->ifnum = ifnum;



 fprintf(stderr, "%s speed\t%s\t%u\n",
  speed(entry->speed), entry->name, entry->ifnum);

 entry->next = testdevs;
 testdevs = entry;
 return 0;
}
