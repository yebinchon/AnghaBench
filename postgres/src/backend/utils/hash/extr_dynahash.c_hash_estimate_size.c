
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int HASHSEGMENT ;
typedef int HASHHDR ;
typedef int HASHELEMENT ;
typedef int HASHBUCKET ;


 long DEF_DIRSIZE ;
 long DEF_FFACTOR ;
 long DEF_SEGSIZE ;
 long MAXALIGN (int) ;
 int add_size (int,long) ;
 long choose_nelem_alloc (int) ;
 long mul_size (long,long) ;
 long next_pow2_long (long) ;

Size
hash_estimate_size(long num_entries, Size entrysize)
{
 Size size;
 long nBuckets,
    nSegments,
    nDirEntries,
    nElementAllocs,
    elementSize,
    elementAllocCnt;


 nBuckets = next_pow2_long((num_entries - 1) / DEF_FFACTOR + 1);

 nSegments = next_pow2_long((nBuckets - 1) / DEF_SEGSIZE + 1);

 nDirEntries = DEF_DIRSIZE;
 while (nDirEntries < nSegments)
  nDirEntries <<= 1;


 size = MAXALIGN(sizeof(HASHHDR));

 size = add_size(size, mul_size(nDirEntries, sizeof(HASHSEGMENT)));

 size = add_size(size, mul_size(nSegments,
           MAXALIGN(DEF_SEGSIZE * sizeof(HASHBUCKET))));

 elementAllocCnt = choose_nelem_alloc(entrysize);
 nElementAllocs = (num_entries - 1) / elementAllocCnt + 1;
 elementSize = MAXALIGN(sizeof(HASHELEMENT)) + MAXALIGN(entrysize);
 size = add_size(size,
     mul_size(nElementAllocs,
        mul_size(elementAllocCnt, elementSize)));

 return size;
}
