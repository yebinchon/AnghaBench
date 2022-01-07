
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int stream_t ;
typedef scalar_t__ int64_t ;


 scalar_t__ EBML_INT_INVALID ;
 scalar_t__ EBML_UINT_INVALID ;
 scalar_t__ ebml_read_length (int *) ;
 scalar_t__ stream_tell (int *) ;

int64_t ebml_read_signed_length(stream_t *s)
{
    uint64_t unum;
    int l;


    uint64_t offset = stream_tell(s);
    unum = ebml_read_length(s);
    if (unum == EBML_UINT_INVALID)
        return EBML_INT_INVALID;
    l = stream_tell(s) - offset;

    return unum - ((1LL << ((7 * l) - 1)) - 1);
}
