
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int defn; } ;
typedef TYPE_2__ TocEntry ;
struct TYPE_6__ {int std_strings; } ;
struct TYPE_8__ {TYPE_1__ public; } ;
typedef TYPE_3__ ArchiveHandle ;


 int fatal (char*,int ) ;
 char* strchr (int ,char) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static void
processStdStringsEntry(ArchiveHandle *AH, TocEntry *te)
{

 char *ptr1;

 ptr1 = strchr(te->defn, '\'');
 if (ptr1 && strncmp(ptr1, "'on'", 4) == 0)
  AH->public.std_strings = 1;
 else if (ptr1 && strncmp(ptr1, "'off'", 5) == 0)
  AH->public.std_strings = 0;
 else
  fatal("invalid STDSTRINGS item: %s",
     te->defn);
}
