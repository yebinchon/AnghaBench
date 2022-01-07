
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PcapFile {scalar_t__ fp; } ;


 int fclose (scalar_t__) ;
 int free (struct PcapFile*) ;

void pcapfile_close(struct PcapFile *handle)
{
    if (handle == ((void*)0))
        return;
    if (handle->fp)
        fclose(handle->fp);
    free(handle);
}
