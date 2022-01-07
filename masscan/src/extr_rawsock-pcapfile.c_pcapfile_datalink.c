
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PcapFile {int linktype; } ;



unsigned
pcapfile_datalink(struct PcapFile *handle)
{
    if (handle)
        return (unsigned)handle->linktype;
    else
        return 0;
}
