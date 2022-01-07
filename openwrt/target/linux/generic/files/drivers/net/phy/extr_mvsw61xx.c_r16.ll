; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_r16.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_r16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 (%struct.mii_bus*, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)* }

@MV_INDIRECT_REG_CMD = common dso_local global i32 0, align 4
@MV_INDIRECT_INPROGRESS = common dso_local global i32 0, align 4
@MV_INDIRECT_READ = common dso_local global i32 0, align 4
@MV_INDIRECT_ADDR_S = common dso_local global i32 0, align 4
@MV_INDIRECT_REG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32, i32)* @r16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r16(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mii_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %5
  %16 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %17 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %16, i32 0, i32 0
  %18 = load i32 (%struct.mii_bus*, i32, i32)*, i32 (%struct.mii_bus*, i32, i32)** %17, align 8
  %19 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 %18(%struct.mii_bus* %19, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  br label %56

23:                                               ; preds = %5
  %24 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @MV_INDIRECT_REG_CMD, align 4
  %27 = load i32, i32* @MV_INDIRECT_INPROGRESS, align 4
  %28 = call i32 @mvsw61xx_wait_mask_raw(%struct.mii_bus* %24, i32 %25, i32 %26, i32 %27, i32 0)
  %29 = load i32, i32* @MV_INDIRECT_READ, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @MV_INDIRECT_ADDR_S, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %29, %32
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %12, align 4
  %36 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %37 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %36, i32 0, i32 1
  %38 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %37, align 8
  %39 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @MV_INDIRECT_REG_CMD, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 %38(%struct.mii_bus* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @MV_INDIRECT_REG_CMD, align 4
  %47 = load i32, i32* @MV_INDIRECT_INPROGRESS, align 4
  %48 = call i32 @mvsw61xx_wait_mask_raw(%struct.mii_bus* %44, i32 %45, i32 %46, i32 %47, i32 0)
  %49 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %50 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %49, i32 0, i32 0
  %51 = load i32 (%struct.mii_bus*, i32, i32)*, i32 (%struct.mii_bus*, i32, i32)** %50, align 8
  %52 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @MV_INDIRECT_REG_DATA, align 4
  %55 = call i32 %51(%struct.mii_bus* %52, i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %23, %15
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @mvsw61xx_wait_mask_raw(%struct.mii_bus*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
