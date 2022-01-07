
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _u32 ;
typedef int _sblock ;


 int memcpy (int *,char*,int) ;
 int * sflash_block_name ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void print_block_name (_u32 ublock) {
    char _sblock[4];
    snprintf (_sblock, sizeof(_sblock), "%03u", ublock);
    memcpy (&sflash_block_name[2], _sblock, 3);
}
