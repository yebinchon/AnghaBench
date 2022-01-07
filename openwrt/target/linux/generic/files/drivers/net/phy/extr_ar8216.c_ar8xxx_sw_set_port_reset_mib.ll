; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_sw_set_port_reset_mib.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_sw_set_port_reset_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32 }
%struct.ar8xxx_priv = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar8xxx_sw_set_port_reset_mib(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.ar8xxx_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %11 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %12 = call %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev* %11)
  store %struct.ar8xxx_priv* %12, %struct.ar8xxx_priv** %8, align 8
  %13 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %14 = call i32 @ar8xxx_has_mib_counters(%struct.ar8xxx_priv* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %49

19:                                               ; preds = %3
  %20 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %21 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %25 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %49

31:                                               ; preds = %19
  %32 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %33 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %36 = call i32 @ar8xxx_mib_capture(%struct.ar8xxx_priv* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %44

40:                                               ; preds = %31
  %41 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @ar8xxx_mib_fetch_port_stat(%struct.ar8xxx_priv* %41, i32 %42, i32 1)
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %40, %39
  %45 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %46 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %44, %28, %16
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev*) #1

declare dso_local i32 @ar8xxx_has_mib_counters(%struct.ar8xxx_priv*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ar8xxx_mib_capture(%struct.ar8xxx_priv*) #1

declare dso_local i32 @ar8xxx_mib_fetch_port_stat(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
