
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long DEF_DIRSIZE ;
 long DEF_FFACTOR ;
 long DEF_SEGSIZE ;
 long next_pow2_long (long) ;

long
hash_select_dirsize(long num_entries)
{
 long nBuckets,
    nSegments,
    nDirEntries;


 nBuckets = next_pow2_long((num_entries - 1) / DEF_FFACTOR + 1);

 nSegments = next_pow2_long((nBuckets - 1) / DEF_SEGSIZE + 1);

 nDirEntries = DEF_DIRSIZE;
 while (nDirEntries < nSegments)
  nDirEntries <<= 1;

 return nDirEntries;
}
