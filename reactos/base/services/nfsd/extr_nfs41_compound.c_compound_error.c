
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NFS4_OK ;
 int dprintf (int,char*,int) ;

int compound_error(int status)
{
    if (status != NFS4_OK)
        dprintf(1, "COMPOUND failed with status %d.\n", status);
    return status;
}
