; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_sw_get_port_link.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_sw_get_port_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_port_link = type { i32, i32, i32, i32, i32, i32 }
%struct.rtl8366_smi = type { i32 }

@RTL8367B_NUM_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTL8367B_PORT_STATUS_LINK = common dso_local global i32 0, align 4
@RTL8367B_PORT_STATUS_DUPLEX = common dso_local global i32 0, align 4
@RTL8367B_PORT_STATUS_RXPAUSE = common dso_local global i32 0, align 4
@RTL8367B_PORT_STATUS_TXPAUSE = common dso_local global i32 0, align 4
@RTL8367B_PORT_STATUS_NWAY = common dso_local global i32 0, align 4
@RTL8367B_PORT_STATUS_SPEED_MASK = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_10 = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_100 = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_1000 = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, i32, %struct.switch_port_link*)* @rtl8367b_sw_get_port_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367b_sw_get_port_link(%struct.switch_dev* %0, i32 %1, %struct.switch_port_link* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switch_port_link*, align 8
  %8 = alloca %struct.rtl8366_smi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switch_port_link* %2, %struct.switch_port_link** %7, align 8
  %11 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %12 = call %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev* %11)
  store %struct.rtl8366_smi* %12, %struct.rtl8366_smi** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @RTL8367B_NUM_PORTS, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %96

19:                                               ; preds = %3
  %20 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @RTL8367B_PORT_STATUS_REG(i32 %21)
  %23 = call i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi* %20, i32 %22, i32* %9)
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @RTL8367B_PORT_STATUS_LINK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %32 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %34 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %96

38:                                               ; preds = %19
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @RTL8367B_PORT_STATUS_DUPLEX, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %47 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @RTL8367B_PORT_STATUS_RXPAUSE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %56 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @RTL8367B_PORT_STATUS_TXPAUSE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %65 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @RTL8367B_PORT_STATUS_NWAY, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %74 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @RTL8367B_PORT_STATUS_SPEED_MASK, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  switch i32 %78, label %91 [
    i32 0, label %79
    i32 1, label %83
    i32 2, label %87
  ]

79:                                               ; preds = %38
  %80 = load i32, i32* @SWITCH_PORT_SPEED_10, align 4
  %81 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %82 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  br label %95

83:                                               ; preds = %38
  %84 = load i32, i32* @SWITCH_PORT_SPEED_100, align 4
  %85 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %86 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  br label %95

87:                                               ; preds = %38
  %88 = load i32, i32* @SWITCH_PORT_SPEED_1000, align 4
  %89 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %90 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  br label %95

91:                                               ; preds = %38
  %92 = load i32, i32* @SWITCH_PORT_SPEED_UNKNOWN, align 4
  %93 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %94 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %91, %87, %83, %79
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %37, %16
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev*) #1

declare dso_local i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi*, i32, i32*) #1

declare dso_local i32 @RTL8367B_PORT_STATUS_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
