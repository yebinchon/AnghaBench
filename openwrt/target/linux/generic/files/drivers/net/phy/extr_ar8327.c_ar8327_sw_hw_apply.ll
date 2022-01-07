; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_sw_hw_apply.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_sw_hw_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.ar8xxx_priv = type { %struct.ar8327_data* }
%struct.ar8327_data = type { i64* }

@AR8XXX_NUM_PHYS = common dso_local global i32 0, align 4
@AR8327_REG_EEE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*)* @ar8327_sw_hw_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8327_sw_hw_apply(%struct.switch_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.switch_dev*, align 8
  %4 = alloca %struct.ar8xxx_priv*, align 8
  %5 = alloca %struct.ar8327_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %3, align 8
  %8 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %9 = call %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev* %8)
  store %struct.ar8xxx_priv* %9, %struct.ar8xxx_priv** %4, align 8
  %10 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %10, i32 0, i32 0
  %12 = load %struct.ar8327_data*, %struct.ar8327_data** %11, align 8
  store %struct.ar8327_data* %12, %struct.ar8327_data** %5, align 8
  %13 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %14 = call i32 @ar8xxx_sw_hw_apply(%struct.switch_dev* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %50

19:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %46, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @AR8XXX_NUM_PHYS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %20
  %25 = load %struct.ar8327_data*, %struct.ar8327_data** %5, align 8
  %26 = getelementptr inbounds %struct.ar8327_data, %struct.ar8327_data* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %35 = load i32, i32* @AR8327_REG_EEE_CTRL, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @AR8327_EEE_CTRL_DISABLE_PHY(i32 %36)
  %38 = call i32 @ar8xxx_reg_clear(%struct.ar8xxx_priv* %34, i32 %35, i32 %37)
  br label %45

39:                                               ; preds = %24
  %40 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %41 = load i32, i32* @AR8327_REG_EEE_CTRL, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @AR8327_EEE_CTRL_DISABLE_PHY(i32 %42)
  %44 = call i32 @ar8xxx_reg_set(%struct.ar8xxx_priv* %40, i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %39, %33
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %20

49:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %17
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev*) #1

declare dso_local i32 @ar8xxx_sw_hw_apply(%struct.switch_dev*) #1

declare dso_local i32 @ar8xxx_reg_clear(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @AR8327_EEE_CTRL_DISABLE_PHY(i32) #1

declare dso_local i32 @ar8xxx_reg_set(%struct.ar8xxx_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
