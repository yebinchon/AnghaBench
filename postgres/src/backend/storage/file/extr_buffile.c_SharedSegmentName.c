
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPGPATH ;
 int snprintf (char*,int ,char*,char const*,int) ;

__attribute__((used)) static void
SharedSegmentName(char *name, const char *buffile_name, int segment)
{
 snprintf(name, MAXPGPATH, "%s.%d", buffile_name, segment);
}
