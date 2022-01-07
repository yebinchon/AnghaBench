
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nn_chunk {int dummy; } ;



__attribute__((used)) static size_t nn_chunk_hdrsize ()
{
    return sizeof (struct nn_chunk) + 2 * sizeof (uint32_t);
}
