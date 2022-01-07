
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOADADDR ;
 int kernel_la ;
 unsigned char* lzma_data ;
 int lzma_datasize ;

__attribute__((used)) static void lzma_init_data(void)
{
 extern unsigned char _lzma_data_start[];
 extern unsigned char _lzma_data_end[];

 kernel_la = LOADADDR;
 lzma_data = _lzma_data_start;
 lzma_datasize = _lzma_data_end - _lzma_data_start;
}
