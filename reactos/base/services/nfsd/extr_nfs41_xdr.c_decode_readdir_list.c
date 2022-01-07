
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ignore_the_rest; scalar_t__ remaining_len; scalar_t__ has_next_entry; int * last_entry_offset; int buf_pos; } ;
typedef TYPE_1__ readdir_entry_iterator ;
struct TYPE_6__ {scalar_t__ eof; scalar_t__ entries_len; scalar_t__ has_entries; int entries; } ;
typedef TYPE_2__ nfs41_readdir_list ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int decode_readdir_entry (int *,TYPE_1__*) ;
 int xdr_bool (int *,scalar_t__*) ;

__attribute__((used)) static bool_t decode_readdir_list(
    XDR *xdr,
    nfs41_readdir_list *dirs)
{
    readdir_entry_iterator iter;
    iter.buf_pos = dirs->entries;
    iter.remaining_len = dirs->entries_len;
    iter.last_entry_offset = ((void*)0);
    iter.ignore_the_rest = 0;
    iter.has_next_entry = 0;

    if (!xdr_bool(xdr, &dirs->has_entries))
        return FALSE;

    if (dirs->has_entries)
    {
        do {
            if (!decode_readdir_entry(xdr, &iter))
                return FALSE;

        } while (iter.has_next_entry);
    }
    dirs->entries_len -= iter.remaining_len;

    if (!xdr_bool(xdr, &dirs->eof))
        return FALSE;


    if (iter.ignore_the_rest)
        dirs->eof = 0;
    return TRUE;
}
