
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * attr; } ;
typedef TYPE_1__* HPDF_Stream ;
typedef scalar_t__ HPDF_FILEP ;


 int HPDF_FCLOSE (scalar_t__) ;
 int HPDF_PTRACE (char*) ;

void
HPDF_FileStream_FreeFunc (HPDF_Stream stream)
{
    HPDF_FILEP fp;

    HPDF_PTRACE((" HPDF_FileStream_FreeFunc\n"));

    fp = (HPDF_FILEP)stream->attr;

    if (fp)
        HPDF_FCLOSE(fp);

    stream->attr = ((void*)0);
}
