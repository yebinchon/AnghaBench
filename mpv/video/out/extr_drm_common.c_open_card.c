
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int card_path ;


 char* DRM_DEV_NAME ;
 int DRM_DIR_NAME ;
 int O_CLOEXEC ;
 int O_RDWR ;
 int open (char*,int) ;
 int snprintf (char*,int,char*,int ,int) ;

__attribute__((used)) static int open_card(int card_no)
{
    char card_path[128];
    snprintf(card_path, sizeof(card_path), DRM_DEV_NAME, DRM_DIR_NAME, card_no);
    return open(card_path, O_RDWR | O_CLOEXEC);
}
