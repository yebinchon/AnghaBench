; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/samsung/files-4.14/drivers/mtd/nand/extr_s5pxx_nand.c_s5p_nand_remove.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/samsung/files-4.14/drivers/mtd/nand/extr_s5pxx_nand.c_s5p_nand_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.s5p_nand_host = type { i32*, i32 }
%struct.mtd_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s5p_nand_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_nand_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.s5p_nand_host*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.s5p_nand_host* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.s5p_nand_host* %6, %struct.s5p_nand_host** %3, align 8
  %7 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %3, align 8
  %8 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %7, i32 0, i32 1
  %9 = call %struct.mtd_info* @nand_to_mtd(i32* %8)
  store %struct.mtd_info* %9, %struct.mtd_info** %4, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = call i32 @nand_release(%struct.mtd_info* %10)
  %12 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %3, align 8
  %13 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_disable_unprepare(i32 %16)
  %18 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %3, align 8
  %19 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_disable_unprepare(i32 %22)
  ret i32 0
}

declare dso_local %struct.s5p_nand_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(i32*) #1

declare dso_local i32 @nand_release(%struct.mtd_info*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
