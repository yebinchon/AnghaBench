
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar934x_nfc {unsigned int buf_size; int * buf; int parent; int buf_dma; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*) ;
 int * dma_alloc_coherent (int ,unsigned int,int *,int ) ;
 int nfc_dbg (struct ar934x_nfc*,char*,int *,unsigned int) ;

__attribute__((used)) static int
ar934x_nfc_alloc_buf(struct ar934x_nfc *nfc, unsigned size)
{
 nfc->buf = dma_alloc_coherent(nfc->parent, size,
          &nfc->buf_dma, GFP_KERNEL);
 if (nfc->buf == ((void*)0)) {
  dev_err(nfc->parent, "no memory for DMA buffer\n");
  return -ENOMEM;
 }

 nfc->buf_size = size;
 nfc_dbg(nfc, "buf:%p size:%u\n", nfc->buf, nfc->buf_size);

 return 0;
}
