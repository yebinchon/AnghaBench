
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef int dev ;
typedef int FILE ;


 int O_RDWR ;
 int O_SYNC ;
 int PATH_MAX ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int open (char const*,int) ;
 int snprintf (char*,int,char*,char const*,...) ;
 scalar_t__ sscanf (char*,char*,int*) ;
 scalar_t__ strstr (char*,char*) ;

int mtd_open(const char *mtd, bool block)
{
 FILE *fp;
 char dev[PATH_MAX];
 int i;
 int ret;
 int flags = O_RDWR | O_SYNC;
 char name[PATH_MAX];

 snprintf(name, sizeof(name), "\"%s\"", mtd);
 if ((fp = fopen("/proc/mtd", "r"))) {
  while (fgets(dev, sizeof(dev), fp)) {
   if (sscanf(dev, "mtd%d:", &i) && strstr(dev, name)) {
    snprintf(dev, sizeof(dev), "/dev/mtd%s/%d", (block ? "block" : ""), i);
    if ((ret=open(dev, flags))<0) {
     snprintf(dev, sizeof(dev), "/dev/mtd%s%d", (block ? "block" : ""), i);
     ret=open(dev, flags);
    }
    fclose(fp);
    return ret;
   }
  }
  fclose(fp);
 }

 return open(mtd, flags);
}
