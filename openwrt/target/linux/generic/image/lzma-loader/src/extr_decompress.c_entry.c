
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int lc; unsigned int lp; unsigned int pb; } ;
struct TYPE_8__ {int * Probs; TYPE_1__ Properties; } ;
struct TYPE_7__ {int Read; } ;
typedef TYPE_2__ ILzmaInCallback ;
typedef int CProb ;
typedef TYPE_3__ CLzmaDecoderState ;


 scalar_t__ KERNEL_ENTRY ;
 unsigned int LZMA_RESULT_OK ;
 unsigned int LzmaDecode (TYPE_3__*,TYPE_2__*,unsigned char*,unsigned int,unsigned int*) ;
 int blast_dcache (unsigned long,unsigned long) ;
 int blast_icache (unsigned long,unsigned long) ;
 scalar_t__ buffer ;
 int data ;
 unsigned int get_byte () ;
 int lzma_start ;
 int read_byte ;
 void stub1 (int,int,int,int) ;

void entry(unsigned long icache_size, unsigned long icache_lsize,
 unsigned long dcache_size, unsigned long dcache_lsize)
{
 unsigned int i;
 unsigned int osize;
 volatile unsigned int arg0, arg1, arg2, arg3;


 __asm__ __volatile__ ("ori %0, $12, 0":"=r"(arg0));
 __asm__ __volatile__ ("ori %0, $13, 0":"=r"(arg1));
 __asm__ __volatile__ ("ori %0, $14, 0":"=r"(arg2));
 __asm__ __volatile__ ("ori %0, $15, 0":"=r"(arg3));

 ILzmaInCallback callback;
 CLzmaDecoderState vs;
 callback.Read = read_byte;

 data = lzma_start;


 i = get_byte();
 vs.Properties.lc = i % 9, i = i / 9;
 vs.Properties.lp = i % 5, vs.Properties.pb = i / 5;

 vs.Probs = (CProb *)buffer;


 for (i = 0; i < 4; i++)
  get_byte();


 osize = ((unsigned int)get_byte()) +
  ((unsigned int)get_byte() << 8) +
  ((unsigned int)get_byte() << 16) +
  ((unsigned int)get_byte() << 24);


 for (i = 0; i < 4; i++)
  get_byte();


 if ((i = LzmaDecode(&vs, &callback,
 (unsigned char*)KERNEL_ENTRY, osize, &osize)) == LZMA_RESULT_OK)
 {
  blast_dcache(dcache_size, dcache_lsize);
  blast_icache(icache_size, icache_lsize);


  ((void (*)(int a0, int a1, int a2, int a3)) KERNEL_ENTRY)(arg0, arg1, arg2, arg3);
 }
}
