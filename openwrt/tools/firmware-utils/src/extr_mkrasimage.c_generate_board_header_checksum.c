
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t BOARD_NAME_LEN ;
 int ERR (char*) ;
 int EXIT_FAILURE ;
 int HEADER_PARTITION_CALC_LENGTH ;
 size_t ROOTFS_HEADER_LEN ;
 int exit (int ) ;
 int free (char*) ;
 char* malloc (int ) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int,int ) ;
 size_t strlen (char*) ;
 unsigned int zyxel_chksm (unsigned char const*,int ) ;

unsigned int generate_board_header_checksum(char *kernel_hdr, char *rootfs_hdr, char *boardname)
{
    char *board_hdr_tmp;
    unsigned int sum;
    size_t ptr = 0;
    board_hdr_tmp = malloc(HEADER_PARTITION_CALC_LENGTH);
    if (!board_hdr_tmp) {
        ERR("Couldn't allocate memory for temporary board header!");
        exit(EXIT_FAILURE);
    }
    memset(board_hdr_tmp, 0xff, HEADER_PARTITION_CALC_LENGTH);


    memcpy(board_hdr_tmp, rootfs_hdr, ROOTFS_HEADER_LEN);
    ptr += ROOTFS_HEADER_LEN;


    memcpy(board_hdr_tmp + ptr, rootfs_hdr, 4);
    ptr += 4;


    memcpy(board_hdr_tmp + ptr, boardname, strlen(boardname));
    ptr += strlen(boardname);

    board_hdr_tmp[ptr] = 0x0;
    ptr = ROOTFS_HEADER_LEN + 4 + BOARD_NAME_LEN;


    if (kernel_hdr)
        memcpy(board_hdr_tmp + ptr, kernel_hdr, 8);


    sum = zyxel_chksm((const unsigned char *)board_hdr_tmp, HEADER_PARTITION_CALC_LENGTH);
    free(board_hdr_tmp);
    return sum;
}
