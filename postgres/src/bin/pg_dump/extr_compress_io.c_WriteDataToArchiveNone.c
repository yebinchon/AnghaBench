
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* writeF ) (int *,char const*,size_t) ;} ;
typedef TYPE_1__ CompressorState ;
typedef int ArchiveHandle ;


 int stub1 (int *,char const*,size_t) ;

__attribute__((used)) static void
WriteDataToArchiveNone(ArchiveHandle *AH, CompressorState *cs,
        const char *data, size_t dLen)
{
 cs->writeF(AH, data, dLen);
 return;
}
