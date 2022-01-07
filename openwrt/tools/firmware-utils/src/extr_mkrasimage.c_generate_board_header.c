
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOARD_HEADER_LEN ;
 int ERR (char*) ;
 int EXIT_FAILURE ;
 int exit (int ) ;
 unsigned int generate_board_header_checksum (char*,char*,char*) ;
 char* malloc (int ) ;
 int memcpy (char*,...) ;
 int memset (char*,int,int ) ;
 int strlen (char*) ;

char *generate_board_header(char *kernel_hdr, char *rootfs_hdr, char *boardname)
{
    unsigned int board_checksum;
    char *board_hdr;

    board_hdr = malloc(BOARD_HEADER_LEN);
    if (!board_hdr) {
        ERR("Couldn't allocate memory for board header!");
        exit(EXIT_FAILURE);
    }
    memset(board_hdr, 0xff, BOARD_HEADER_LEN);


    board_checksum = generate_board_header_checksum(kernel_hdr, rootfs_hdr, boardname);
    memcpy(board_hdr, &board_checksum, 4);


    memcpy(board_hdr + 4, boardname, strlen(boardname));
    board_hdr[4 + strlen(boardname)] = 0x0;

    return board_hdr;
}
