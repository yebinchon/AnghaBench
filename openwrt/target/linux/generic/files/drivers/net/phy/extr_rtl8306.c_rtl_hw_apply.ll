; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_hw_apply.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_hw_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.rtl_phyregs = type { i32 }

@RTL8306_NUM_PORTS = common dso_local global i32 0, align 4
@RTL_REG_EN_TRUNK = common dso_local global i32 0, align 4
@RTL_REG_TRUNK_PORTSEL = common dso_local global i32 0, align 4
@RTL_REG_RESET = common dso_local global i32 0, align 4
@RTL_REG_CPU_LINKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*)* @rtl_hw_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_hw_apply(%struct.switch_dev* %0) #0 {
  %2 = alloca %struct.switch_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_phyregs, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %2, align 8
  %7 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %8 = call i32 @rtl_phy_save(%struct.switch_dev* %7, i32 5, %struct.rtl_phyregs* %6)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %18, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @RTL8306_NUM_PORTS, align 4
  %12 = sub nsw i32 %11, 1
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @rtl_port_set_enable(%struct.switch_dev* %15, i32 %16, i32 0)
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %9

21:                                               ; preds = %9
  %22 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %23 = load i32, i32* @RTL_REG_EN_TRUNK, align 4
  %24 = call i32 @rtl_get(%struct.switch_dev* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %26 = load i32, i32* @RTL_REG_TRUNK_PORTSEL, align 4
  %27 = call i32 @rtl_get(%struct.switch_dev* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %29 = load i32, i32* @RTL_REG_EN_TRUNK, align 4
  %30 = call i32 @rtl_set(%struct.switch_dev* %28, i32 %29, i32 1)
  %31 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %32 = load i32, i32* @RTL_REG_TRUNK_PORTSEL, align 4
  %33 = call i32 @rtl_set(%struct.switch_dev* %31, i32 %32, i32 1)
  %34 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %35 = load i32, i32* @RTL_REG_RESET, align 4
  %36 = call i32 @rtl_set(%struct.switch_dev* %34, i32 %35, i32 1)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %48, %21
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 10
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %42 = load i32, i32* @RTL_REG_RESET, align 4
  %43 = call i32 @rtl_get(%struct.switch_dev* %41, i32 %42)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %51

46:                                               ; preds = %40
  %47 = call i32 @msleep(i32 1)
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %37

51:                                               ; preds = %45, %37
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %61, %51
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @RTL8306_NUM_PORTS, align 4
  %55 = sub nsw i32 %54, 1
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @rtl_port_set_enable(%struct.switch_dev* %58, i32 %59, i32 1)
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %52

64:                                               ; preds = %52
  %65 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %66 = load i32, i32* @RTL_REG_EN_TRUNK, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @rtl_set(%struct.switch_dev* %65, i32 %66, i32 %67)
  %69 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %70 = load i32, i32* @RTL_REG_TRUNK_PORTSEL, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @rtl_set(%struct.switch_dev* %69, i32 %70, i32 %71)
  %73 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %74 = call i32 @rtl_phy_restore(%struct.switch_dev* %73, i32 5, %struct.rtl_phyregs* %6)
  %75 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %76 = load i32, i32* @RTL_REG_CPU_LINKUP, align 4
  %77 = call i32 @rtl_set(%struct.switch_dev* %75, i32 %76, i32 1)
  ret i32 0
}

declare dso_local i32 @rtl_phy_save(%struct.switch_dev*, i32, %struct.rtl_phyregs*) #1

declare dso_local i32 @rtl_port_set_enable(%struct.switch_dev*, i32, i32) #1

declare dso_local i32 @rtl_get(%struct.switch_dev*, i32) #1

declare dso_local i32 @rtl_set(%struct.switch_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtl_phy_restore(%struct.switch_dev*, i32, %struct.rtl_phyregs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
