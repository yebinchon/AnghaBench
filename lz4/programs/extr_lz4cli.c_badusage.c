
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAYLEVEL (int,char*) ;
 int displayLevel ;
 int exit (int) ;
 int usage (char const*) ;

__attribute__((used)) static int badusage(const char* exeName)
{
    DISPLAYLEVEL(1, "Incorrect parameters\n");
    if (displayLevel >= 1) usage(exeName);
    exit(1);
}
