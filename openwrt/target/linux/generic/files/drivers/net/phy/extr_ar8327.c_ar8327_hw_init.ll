; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_hw_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { %struct.TYPE_8__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar8xxx_priv*)* @ar8327_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8327_hw_init(%struct.ar8xxx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar8xxx_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i32 @kzalloc(i32 4, i32 %5)
  %7 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 8
  %9 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %51

16:                                               ; preds = %1
  %17 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %25 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %26 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @ar8327_hw_config_of(%struct.ar8xxx_priv* %24, i64 %29)
  store i32 %30, i32* %4, align 4
  br label %41

31:                                               ; preds = %16
  %32 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %33 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %34 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ar8327_hw_config_pdata(%struct.ar8xxx_priv* %32, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %31, %23
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %51

46:                                               ; preds = %41
  %47 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %48 = call i32 @ar8327_leds_init(%struct.ar8xxx_priv* %47)
  %49 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %50 = call i32 @ar8xxx_phy_init(%struct.ar8xxx_priv* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %44, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @ar8327_hw_config_of(%struct.ar8xxx_priv*, i64) #1

declare dso_local i32 @ar8327_hw_config_pdata(%struct.ar8xxx_priv*, i32) #1

declare dso_local i32 @ar8327_leds_init(%struct.ar8xxx_priv*) #1

declare dso_local i32 @ar8xxx_phy_init(%struct.ar8xxx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
