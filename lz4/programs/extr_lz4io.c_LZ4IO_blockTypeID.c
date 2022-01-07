
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LZ4F_blockIndependent ;
 int assert (int) ;

const char* LZ4IO_blockTypeID(int sizeID, int blockMode, char* buffer) {
    buffer[0] = 'B';
    assert(sizeID >= 4); assert(sizeID <= 7);
    buffer[1] = (char)(sizeID + '0');
    buffer[2] = (blockMode == LZ4F_blockIndependent) ? 'I' : 'D';
    buffer[3] = 0;
    return buffer;
}
