
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bloomLength; int * bitSize; } ;
typedef TYPE_1__ BloomOptions ;


 int DEFAULT_BLOOM_BITS ;
 int DEFAULT_BLOOM_LENGTH ;
 int INDEX_MAX_KEYS ;
 int SET_VARSIZE (TYPE_1__*,int) ;
 int SIGNWORDBITS ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static BloomOptions *
makeDefaultBloomOptions(void)
{
 BloomOptions *opts;
 int i;

 opts = (BloomOptions *) palloc0(sizeof(BloomOptions));

 opts->bloomLength = (DEFAULT_BLOOM_LENGTH + SIGNWORDBITS - 1) / SIGNWORDBITS;
 for (i = 0; i < INDEX_MAX_KEYS; i++)
  opts->bitSize[i] = DEFAULT_BLOOM_BITS;
 SET_VARSIZE(opts, sizeof(BloomOptions));
 return opts;
}
