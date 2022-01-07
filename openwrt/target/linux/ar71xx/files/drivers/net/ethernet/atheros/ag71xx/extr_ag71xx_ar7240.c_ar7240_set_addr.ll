; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_set_addr.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar7240sw = type { %struct.mii_bus* }
%struct.mii_bus = type { i32 }

@AR7240_REG_MAC_ADDR0 = common dso_local global i32 0, align 4
@AR7240_REG_MAC_ADDR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar7240sw*, i32*)* @ar7240_set_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar7240_set_addr(%struct.ar7240sw* %0, i32* %1) #0 {
  %3 = alloca %struct.ar7240sw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  store %struct.ar7240sw* %0, %struct.ar7240sw** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.ar7240sw*, %struct.ar7240sw** %3, align 8
  %8 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %7, i32 0, i32 0
  %9 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  store %struct.mii_bus* %9, %struct.mii_bus** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 4
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 8
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 5
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %13, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %19 = load i32, i32* @AR7240_REG_MAC_ADDR0, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ar7240sw_reg_write(%struct.mii_bus* %18, i32 %19, i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 24
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 16
  %30 = or i32 %25, %29
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 %30, %34
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  store i32 %39, i32* %6, align 4
  %40 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %41 = load i32, i32* @AR7240_REG_MAC_ADDR1, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @ar7240sw_reg_write(%struct.mii_bus* %40, i32 %41, i32 %42)
  ret i32 0
}

declare dso_local i32 @ar7240sw_reg_write(%struct.mii_bus*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
