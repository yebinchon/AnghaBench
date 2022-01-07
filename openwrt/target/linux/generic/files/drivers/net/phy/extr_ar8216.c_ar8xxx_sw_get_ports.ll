; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_sw_get_ports.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_sw_get_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_val = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.switch_port* }
%struct.switch_port = type { i32, i32 }
%struct.ar8xxx_priv = type { i32*, i32 }

@AR8X16_MAX_VLANS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SWITCH_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_val*)* @ar8xxx_sw_get_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8xxx_sw_get_ports(%struct.switch_dev* %0, %struct.switch_val* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca %struct.switch_val*, align 8
  %6 = alloca %struct.ar8xxx_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.switch_port*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store %struct.switch_val* %1, %struct.switch_val** %5, align 8
  %10 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %11 = call %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev* %10)
  store %struct.ar8xxx_priv* %11, %struct.ar8xxx_priv** %6, align 8
  %12 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %13 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AR8X16_MAX_VLANS, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %77

20:                                               ; preds = %2
  %21 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %6, align 8
  %22 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %25 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %30 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %73, %20
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %34 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %73

44:                                               ; preds = %37
  %45 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %46 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.switch_port*, %struct.switch_port** %47, align 8
  %49 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %50 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %48, i64 %51
  store %struct.switch_port* %53, %struct.switch_port** %9, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.switch_port*, %struct.switch_port** %9, align 8
  %56 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %6, align 8
  %58 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = shl i32 1, %60
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %44
  %65 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %66 = shl i32 1, %65
  %67 = load %struct.switch_port*, %struct.switch_port** %9, align 8
  %68 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %72

69:                                               ; preds = %44
  %70 = load %struct.switch_port*, %struct.switch_port** %9, align 8
  %71 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %64
  br label %73

73:                                               ; preds = %72, %43
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %31

76:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %17
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
