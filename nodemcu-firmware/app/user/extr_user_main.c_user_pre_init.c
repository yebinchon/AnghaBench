
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {scalar_t__ type; } ;
typedef TYPE_1__ partition_item_t ;
typedef enum flash_size_map { ____Placeholder_flash_size_map } flash_size_map ;


 int PLATFORM_RCR_PHY_DATA ;
 int PLATFORM_RCR_PT ;
 int SIZE_1024K ;
 char SIZE_256K ;
 int first_time_setup (TYPE_1__*,int,int) ;
 TYPE_1__* os_malloc_iram (int) ;
 int os_memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int os_printf (char*,...) ;
 int phy_data_setup (TYPE_1__*,int) ;
 int platform_rcr_read (int ,void**) ;
 int rtctime_early_startup () ;
 int system_get_flash_size_map () ;
 scalar_t__ system_partition_table_regist (TYPE_1__*,int,int) ;

void user_pre_init(void) {





    partition_item_t *rcr_pt = ((void*)0), *pt;
    enum flash_size_map fs_size_code = system_get_flash_size_map();



    static char flash_size_scaler[] = "\001\000\002\003\004\003\004\004\005\006";
    uint32_t flash_size = SIZE_256K << flash_size_scaler[fs_size_code];

    uint32_t i = platform_rcr_read(PLATFORM_RCR_PT, (void **) &rcr_pt);
    uint32_t n = i / sizeof(partition_item_t);

    if (flash_size < SIZE_1024K) {
        os_printf("Flash size (%u) too small to support NodeMCU\n", flash_size);
        return;
    } else {
        os_printf("system SPI FI size:%u, Flash size: %u\n", fs_size_code, flash_size );
    }

    pt = os_malloc_iram(i);

    if ( !rcr_pt || !pt || n * sizeof(partition_item_t) != i) {
        return;
    }
    os_memcpy(pt, rcr_pt, i);

    if (pt[n-1].type == 0) {

        n = first_time_setup(pt, n-1, flash_size);
    }

    if (platform_rcr_read(PLATFORM_RCR_PHY_DATA, ((void*)0))!=0) {
        phy_data_setup(pt, n);
    }



    if( fs_size_code > 1 && system_partition_table_regist(pt, n, fs_size_code)) {
        return;
    }
    os_printf("Invalid system partition table\n");
    while (1) {};
}
