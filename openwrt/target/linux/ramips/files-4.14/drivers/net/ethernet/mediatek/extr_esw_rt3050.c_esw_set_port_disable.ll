; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_esw_rt3050.c_esw_set_port_disable.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_esw_rt3050.c_esw_set_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt305x_esw = type { i32 }

@RT305X_ESW_REG_POC0 = common dso_local global i32 0, align 4
@RT305X_ESW_POC0_DIS_PORT_M = common dso_local global i32 0, align 4
@RT305X_ESW_POC0_DIS_PORT_S = common dso_local global i32 0, align 4
@RT305X_ESW_NUM_LEDS = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt305x_esw*, i32)* @esw_set_port_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esw_set_port_disable(%struct.rt305x_esw* %0, i32 %1) #0 {
  %3 = alloca %struct.rt305x_esw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt305x_esw* %0, %struct.rt305x_esw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.rt305x_esw*, %struct.rt305x_esw** %3, align 8
  %10 = call i32 @esw_get_port_disable(%struct.rt305x_esw* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = xor i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.rt305x_esw*, %struct.rt305x_esw** %3, align 8
  %18 = load i32, i32* @RT305X_ESW_REG_POC0, align 4
  %19 = load i32, i32* @RT305X_ESW_POC0_DIS_PORT_M, align 4
  %20 = load i32, i32* @RT305X_ESW_POC0_DIS_PORT_S, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @RT305X_ESW_POC0_DIS_PORT_S, align 4
  %24 = shl i32 %22, %23
  %25 = call i32 @esw_rmw(%struct.rt305x_esw* %17, i32 %18, i32 %21, i32 %24)
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %62, %2
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @RT305X_ESW_NUM_LEDS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %62

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.rt305x_esw*, %struct.rt305x_esw** %3, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @MII_BMCR, align 4
  %47 = load i32, i32* @BMCR_PDOWN, align 4
  %48 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %44, i32 %45, i32 %46, i32 %47)
  br label %61

49:                                               ; preds = %37
  %50 = load %struct.rt305x_esw*, %struct.rt305x_esw** %3, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @MII_BMCR, align 4
  %53 = load i32, i32* @BMCR_FULLDPLX, align 4
  %54 = load i32, i32* @BMCR_ANENABLE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @BMCR_ANRESTART, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @BMCR_SPEED100, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %50, i32 %51, i32 %52, i32 %59)
  br label %61

61:                                               ; preds = %49, %43
  br label %62

62:                                               ; preds = %61, %36
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %26

65:                                               ; preds = %26
  %66 = load %struct.rt305x_esw*, %struct.rt305x_esw** %3, align 8
  %67 = load i32, i32* @RT305X_ESW_REG_POC0, align 4
  %68 = load i32, i32* @RT305X_ESW_POC0_DIS_PORT_M, align 4
  %69 = load i32, i32* @RT305X_ESW_POC0_DIS_PORT_S, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @RT305X_ESW_POC0_DIS_PORT_S, align 4
  %73 = shl i32 %71, %72
  %74 = call i32 @esw_rmw(%struct.rt305x_esw* %66, i32 %67, i32 %70, i32 %73)
  ret void
}

declare dso_local i32 @esw_get_port_disable(%struct.rt305x_esw*) #1

declare dso_local i32 @esw_rmw(%struct.rt305x_esw*, i32, i32, i32) #1

declare dso_local i32 @rt305x_mii_write(%struct.rt305x_esw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
