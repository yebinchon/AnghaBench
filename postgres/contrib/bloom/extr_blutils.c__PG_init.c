
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
struct TYPE_2__ {char* optname; void* offset; void* opttype; } ;


 int AccessExclusiveLock ;
 int BloomOptions ;
 int DEFAULT_BLOOM_BITS ;
 int DEFAULT_BLOOM_LENGTH ;
 int INDEX_MAX_KEYS ;
 int MAX_BLOOM_BITS ;
 int MAX_BLOOM_LENGTH ;
 char* MemoryContextStrdup (int ,char*) ;
 void* RELOPT_TYPE_INT ;
 int TopMemoryContext ;
 int add_int_reloption (int ,char*,char*,int ,int,int ,int ) ;
 int add_reloption_kind () ;
 int * bitSize ;
 int bl_relopt_kind ;
 TYPE_1__* bl_relopt_tab ;
 int bloomLength ;
 void* offsetof (int ,int ) ;
 int snprintf (char*,int,char*,int) ;

void
_PG_init(void)
{
 int i;
 char buf[16];

 bl_relopt_kind = add_reloption_kind();


 add_int_reloption(bl_relopt_kind, "length",
       "Length of signature in bits",
       DEFAULT_BLOOM_LENGTH, 1, MAX_BLOOM_LENGTH,
       AccessExclusiveLock);
 bl_relopt_tab[0].optname = "length";
 bl_relopt_tab[0].opttype = RELOPT_TYPE_INT;
 bl_relopt_tab[0].offset = offsetof(BloomOptions, bloomLength);


 for (i = 0; i < INDEX_MAX_KEYS; i++)
 {
  snprintf(buf, sizeof(buf), "col%d", i + 1);
  add_int_reloption(bl_relopt_kind, buf,
        "Number of bits generated for each index column",
        DEFAULT_BLOOM_BITS, 1, MAX_BLOOM_BITS,
        AccessExclusiveLock);
  bl_relopt_tab[i + 1].optname = MemoryContextStrdup(TopMemoryContext,
                 buf);
  bl_relopt_tab[i + 1].opttype = RELOPT_TYPE_INT;
  bl_relopt_tab[i + 1].offset = offsetof(BloomOptions, bitSize[0]) + sizeof(int) * i;
 }
}
