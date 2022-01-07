
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lzx_bits {int bb; int bl; int* ip; } ;
struct LZXstate {int dummy; } ;
typedef int UWORD ;
typedef int ULONG ;
typedef int UBYTE ;


 int BUILD_TABLE (int ) ;
 int* LENTABLE (int ) ;
 int PRETREE ;
 int READ_BITS (int,int) ;
 int READ_HUFFSYM (int ,int) ;

__attribute__((used)) static int lzx_read_lens(struct LZXstate *pState, UBYTE *lens, ULONG first, ULONG last, struct lzx_bits *lb) {
    ULONG i,j, x,y;
    int z;

    register ULONG bitbuf = lb->bb;
    register int bitsleft = lb->bl;
    UBYTE *inpos = lb->ip;
    UWORD *hufftbl;

    for (x = 0; x < 20; x++) {
        READ_BITS(y, 4);
        LENTABLE(PRETREE)[x] = y;
    }
    BUILD_TABLE(PRETREE);

    for (x = first; x < last; ) {
        READ_HUFFSYM(PRETREE, z);
        if (z == 17) {
            READ_BITS(y, 4); y += 4;
            while (y--) lens[x++] = 0;
        }
        else if (z == 18) {
            READ_BITS(y, 5); y += 20;
            while (y--) lens[x++] = 0;
        }
        else if (z == 19) {
            READ_BITS(y, 1); y += 4;
            READ_HUFFSYM(PRETREE, z);
            z = lens[x] - z; if (z < 0) z += 17;
            while (y--) lens[x++] = z;
        }
        else {
            z = lens[x] - z; if (z < 0) z += 17;
            lens[x++] = z;
        }
    }

    lb->bb = bitbuf;
    lb->bl = bitsleft;
    lb->ip = inpos;
    return 0;
}
