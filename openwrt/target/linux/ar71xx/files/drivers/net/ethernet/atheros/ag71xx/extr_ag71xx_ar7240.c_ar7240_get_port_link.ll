; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_get_port_link.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_get_port_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_port_link = type { i32, i32, i32, i32, i32, i32 }
%struct.ar7240sw = type { %struct.mii_bus* }
%struct.mii_bus = type { i32 }

@AR7240_NUM_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR7240_PORT_STATUS_LINK_AUTO = common dso_local global i32 0, align 4
@AR7240_PORT_STATUS_LINK_UP = common dso_local global i32 0, align 4
@AR7240_PORT_STATUS_DUPLEX = common dso_local global i32 0, align 4
@AR7240_PORT_STATUS_TXFLOW = common dso_local global i32 0, align 4
@AR7240_PORT_STATUS_RXFLOW = common dso_local global i32 0, align 4
@AR7240_PORT_STATUS_SPEED_M = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_10 = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_100 = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, i32, %struct.switch_port_link*)* @ar7240_get_port_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar7240_get_port_link(%struct.switch_dev* %0, i32 %1, %struct.switch_port_link* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switch_port_link*, align 8
  %8 = alloca %struct.ar7240sw*, align 8
  %9 = alloca %struct.mii_bus*, align 8
  %10 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switch_port_link* %2, %struct.switch_port_link** %7, align 8
  %11 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %12 = call %struct.ar7240sw* @sw_to_ar7240(%struct.switch_dev* %11)
  store %struct.ar7240sw* %12, %struct.ar7240sw** %8, align 8
  %13 = load %struct.ar7240sw*, %struct.ar7240sw** %8, align 8
  %14 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %13, i32 0, i32 0
  %15 = load %struct.mii_bus*, %struct.mii_bus** %14, align 8
  store %struct.mii_bus* %15, %struct.mii_bus** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @AR7240_NUM_PORTS, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %103

22:                                               ; preds = %3
  %23 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @AR7240_REG_PORT_STATUS(i32 %24)
  %26 = call i32 @ar7240sw_reg_read(%struct.mii_bus* %23, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @AR7240_PORT_STATUS_LINK_AUTO, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %35 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %37 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %22
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @AR7240_PORT_STATUS_LINK_UP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %49 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %51 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %103

55:                                               ; preds = %40
  br label %59

56:                                               ; preds = %22
  %57 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %58 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %55
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @AR7240_PORT_STATUS_DUPLEX, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %68 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @AR7240_PORT_STATUS_TXFLOW, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %77 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @AR7240_PORT_STATUS_RXFLOW, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %86 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @AR7240_PORT_STATUS_SPEED_M, align 4
  %89 = and i32 %87, %88
  switch i32 %89, label %102 [
    i32 130, label %90
    i32 129, label %94
    i32 128, label %98
  ]

90:                                               ; preds = %59
  %91 = load i32, i32* @SWITCH_PORT_SPEED_10, align 4
  %92 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %93 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 4
  br label %102

94:                                               ; preds = %59
  %95 = load i32, i32* @SWITCH_PORT_SPEED_100, align 4
  %96 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %97 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  br label %102

98:                                               ; preds = %59
  %99 = load i32, i32* @SWITCH_PORT_SPEED_1000, align 4
  %100 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %101 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %59, %98, %94, %90
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %54, %19
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.ar7240sw* @sw_to_ar7240(%struct.switch_dev*) #1

declare dso_local i32 @ar7240sw_reg_read(%struct.mii_bus*, i32) #1

declare dso_local i32 @AR7240_REG_PORT_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
