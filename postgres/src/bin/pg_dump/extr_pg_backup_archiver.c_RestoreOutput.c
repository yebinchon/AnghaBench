
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int OF; scalar_t__ gzOut; } ;
struct TYPE_5__ {int OF; scalar_t__ gzOut; } ;
typedef TYPE_1__ OutputContext ;
typedef TYPE_2__ ArchiveHandle ;


 int GZCLOSE (int ) ;
 int fatal (char*) ;
 int fclose (int ) ;

__attribute__((used)) static void
RestoreOutput(ArchiveHandle *AH, OutputContext savedContext)
{
 int res;

 if (AH->gzOut)
  res = GZCLOSE(AH->OF);
 else
  res = fclose(AH->OF);

 if (res != 0)
  fatal("could not close output file: %m");

 AH->gzOut = savedContext.gzOut;
 AH->OF = savedContext.OF;
}
