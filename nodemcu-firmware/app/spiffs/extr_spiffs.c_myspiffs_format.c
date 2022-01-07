
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int phys_addr; int phys_size; } ;
struct TYPE_6__ {TYPE_1__ cfg; } ;


 int FALSE ;
 int NODE_DBG (char*,int ,int ) ;
 int SPIFFS_format (TYPE_2__*) ;
 int SPIFFS_unmount (TYPE_2__*) ;
 int TRUE ;
 int erase_cnt ;
 TYPE_2__ fs ;
 int myspiffs_mount (int ) ;

int myspiffs_format( void )
{
  SPIFFS_unmount(&fs);
  myspiffs_mount(TRUE);
  SPIFFS_unmount(&fs);

  NODE_DBG("Formatting: size 0x%x, addr 0x%x\n", fs.cfg.phys_size, fs.cfg.phys_addr);
  erase_cnt = 0;
  int status = SPIFFS_format(&fs);
  erase_cnt = -1;

  return status < 0 ? 0 : myspiffs_mount(FALSE);
}
