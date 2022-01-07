
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar934x_nfc {int buf_dma; int buf; int buf_size; int parent; } ;


 int dma_free_coherent (int ,int ,int ,int ) ;

__attribute__((used)) static void ar934x_nfc_free_buf(struct ar934x_nfc *nfc)
{
 dma_free_coherent(nfc->parent, nfc->buf_size, nfc->buf, nfc->buf_dma);
}
