
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int defn; } ;
typedef TYPE_2__ TocEntry ;
struct TYPE_6__ {int searchpath; } ;
struct TYPE_8__ {TYPE_1__ public; } ;
typedef TYPE_3__ ArchiveHandle ;


 int pg_strdup (int ) ;

__attribute__((used)) static void
processSearchPathEntry(ArchiveHandle *AH, TocEntry *te)
{




 AH->public.searchpath = pg_strdup(te->defn);
}
