
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int nfs_resop4 ;
typedef int nfs_argop4 ;
typedef int nfs41_compound_res ;
struct TYPE_7__ {int * resarray; scalar_t__ resarray_count; int tag_len; } ;
struct TYPE_5__ {int minorversion; int * argarray; scalar_t__ argarray_count; scalar_t__ tag_len; int tag; } ;
struct TYPE_6__ {TYPE_4__ res; TYPE_1__ args; } ;
typedef TYPE_2__ nfs41_compound ;


 int NFS4_OPAQUE_LIMIT ;
 int ZeroMemory (TYPE_4__*,int) ;
 int memcpy (int ,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

void compound_init(
    nfs41_compound *compound,
    nfs_argop4 *argops,
    nfs_resop4 *resops,
    const char *tag)
{

    compound->args.tag_len = (uint32_t)strlen(tag);
    memcpy(compound->args.tag, tag, compound->args.tag_len);
    compound->args.minorversion = 1;
    compound->args.argarray_count = 0;
    compound->args.argarray = argops;


    ZeroMemory(&compound->res, sizeof(nfs41_compound_res));
    compound->res.tag_len = NFS4_OPAQUE_LIMIT;
    compound->res.resarray_count = 0;
    compound->res.resarray = resops;
}
