
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pack_swap_bytes; int pack_lsb_first; int pack_skip_pixels; int pack_skip_rows; int pack_row_length; int pack_alignment; int unpack_swap_bytes; int unpack_lsb_first; int unpack_skip_pixels; int unpack_skip_rows; int unpack_row_length; int unpack_alignment; } ;
typedef TYPE_1__ PixelStorageModes ;


 int GL_PACK_ALIGNMENT ;
 int GL_PACK_LSB_FIRST ;
 int GL_PACK_ROW_LENGTH ;
 int GL_PACK_SKIP_PIXELS ;
 int GL_PACK_SKIP_ROWS ;
 int GL_PACK_SWAP_BYTES ;
 int GL_UNPACK_ALIGNMENT ;
 int GL_UNPACK_LSB_FIRST ;
 int GL_UNPACK_ROW_LENGTH ;
 int GL_UNPACK_SKIP_PIXELS ;
 int GL_UNPACK_SKIP_ROWS ;
 int GL_UNPACK_SWAP_BYTES ;
 int glGetIntegerv (int ,int *) ;

__attribute__((used)) static void retrieveStoreModes(PixelStorageModes *psm)
{
    glGetIntegerv(GL_UNPACK_ALIGNMENT, &psm->unpack_alignment);
    glGetIntegerv(GL_UNPACK_ROW_LENGTH, &psm->unpack_row_length);
    glGetIntegerv(GL_UNPACK_SKIP_ROWS, &psm->unpack_skip_rows);
    glGetIntegerv(GL_UNPACK_SKIP_PIXELS, &psm->unpack_skip_pixels);
    glGetIntegerv(GL_UNPACK_LSB_FIRST, &psm->unpack_lsb_first);
    glGetIntegerv(GL_UNPACK_SWAP_BYTES, &psm->unpack_swap_bytes);

    glGetIntegerv(GL_PACK_ALIGNMENT, &psm->pack_alignment);
    glGetIntegerv(GL_PACK_ROW_LENGTH, &psm->pack_row_length);
    glGetIntegerv(GL_PACK_SKIP_ROWS, &psm->pack_skip_rows);
    glGetIntegerv(GL_PACK_SKIP_PIXELS, &psm->pack_skip_pixels);
    glGetIntegerv(GL_PACK_LSB_FIRST, &psm->pack_lsb_first);
    glGetIntegerv(GL_PACK_SWAP_BYTES, &psm->pack_swap_bytes);
}
