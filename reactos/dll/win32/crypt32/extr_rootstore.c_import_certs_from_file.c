
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HCERTSTORE ;
typedef int FILE ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int import_base64_certs_from_fp (int *,int ) ;

__attribute__((used)) static BOOL import_certs_from_file(int fd, HCERTSTORE store)
{
    BOOL ret = FALSE;
    FILE *fp;

    TRACE("\n");

    fp = fdopen(fd, "r");
    if (fp)
    {
        ret = import_base64_certs_from_fp(fp, store);
        fclose(fp);
    }
    return ret;
}
