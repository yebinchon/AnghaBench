
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int blockSizeID; } ;
typedef TYPE_1__ LZ4F_frameInfo_t ;







 int exit (int) ;
 int printf (char*) ;

__attribute__((used)) static size_t get_block_size(const LZ4F_frameInfo_t* info) {
    switch (info->blockSizeID) {
        case 132:
        case 128: return 1 << 16;
        case 130: return 1 << 18;
        case 131: return 1 << 20;
        case 129: return 1 << 22;
        default:
            printf("Impossible with expected frame specification (<=v1.6.1)\n");
            exit(1);
    }
}
