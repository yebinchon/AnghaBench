
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int type; int size; int addr; } ;
typedef TYPE_1__ partition_item_t ;


 int INTERNAL_FLASH_SECTOR_SIZE ;
 int IROM0_SIZE ;



 int PLATFORM_RCR_PT ;
 void* PT_ALIGN (int) ;
 int _ResetHandler () ;
 int ets_delay_us (int) ;
 int os_printf (char*,int) ;
 int platform_rcr_write (int ,TYPE_1__*,int) ;

__attribute__((used)) static uint32_t first_time_setup(partition_item_t *pt, uint32_t n, uint32_t flash_size) {
    int i, j, last = 0, newn = n;




    for (i = 0, j = 0; i < n; i ++) {
        partition_item_t *p = pt + i;
        switch (p->type) {

          case 130:



            if (p->size == 0) {
                p->size = PT_ALIGN(IROM0_SIZE);
            }
            break;

          case 129:


            p->size = PT_ALIGN(p->size);
            if (p->addr == 0)
                p->addr = last;
            break;

          case 128:
            if (p->size == ~0x0 && p->addr == 0) {

                p->addr = last;
                p->size = flash_size - last;
            } else if (p->size == ~0x0) {
                p->size = flash_size - p->addr;
           } else if (p->addr == 0) {



                p->addr = (p->size <= flash_size - 0x100000) ? 0x100000 : last;
            }
        }

        if (p->size == 0) {

            newn--;
        } else {

            if (p->addr & (INTERNAL_FLASH_SECTOR_SIZE - 1) ||
                p->size & (INTERNAL_FLASH_SECTOR_SIZE - 1) ||
                p->addr < last ||
                p->addr + p->size > flash_size) {
                os_printf("Partition %u invalid alignment\n", i);
                while(1) { }
            }
            if (j < i)
                pt[j] = *p;

            j++;
            last = p->addr + p->size;
        }
    }

    platform_rcr_write(PLATFORM_RCR_PT, pt, newn*sizeof(partition_item_t));
    ets_delay_us(5000);
    _ResetHandler();
}
