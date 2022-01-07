; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_sw_set_learning_enable.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_sw_set_learning_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl8366_smi = type { i32 }

@RTL8366RB_PORT_ALL = common dso_local global i32 0, align 4
@RTL8366RB_SSCR0 = common dso_local global i32 0, align 4
@RTL8366RB_SSCR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @rtl8366rb_sw_set_learning_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_sw_set_learning_enable(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca %struct.switch_attr*, align 8
  %6 = alloca %struct.switch_val*, align 8
  %7 = alloca %struct.rtl8366_smi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %5, align 8
  store %struct.switch_val* %2, %struct.switch_val** %6, align 8
  %10 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %11 = call %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev* %10)
  store %struct.rtl8366_smi* %11, %struct.rtl8366_smi** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %13 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @RTL8366RB_PORT_ALL, align 4
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %17, %3
  %20 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %7, align 8
  %21 = load i32, i32* @RTL8366RB_SSCR0, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @REG_WR(%struct.rtl8366_smi* %20, i32 %21, i32 %22)
  %24 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %7, align 8
  %25 = load i32, i32* @RTL8366RB_SSCR1, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @REG_WR(%struct.rtl8366_smi* %24, i32 %25, i32 %26)
  ret i32 0
}

declare dso_local %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev*) #1

declare dso_local i32 @REG_WR(%struct.rtl8366_smi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
