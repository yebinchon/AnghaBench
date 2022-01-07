; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/drivers/spi/extr_spi-cns3xxx.c_cns3xxx_spi_rx_buffer_full.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/drivers/spi/extr_spi-cns3xxx.c_cns3xxx_spi_rx_buffer_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cns3xxx_spi = type { i32 }

@SPI_INTERRUPT_STATUS_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cns3xxx_spi*)* @cns3xxx_spi_rx_buffer_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cns3xxx_spi_rx_buffer_full(%struct.cns3xxx_spi* %0) #0 {
  %2 = alloca %struct.cns3xxx_spi*, align 8
  store %struct.cns3xxx_spi* %0, %struct.cns3xxx_spi** %2, align 8
  %3 = load i32, i32* @SPI_INTERRUPT_STATUS_REG, align 4
  %4 = and i32 %3, 4
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i64
  %7 = select i1 %5, i32 1, i32 0
  ret i32 %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
