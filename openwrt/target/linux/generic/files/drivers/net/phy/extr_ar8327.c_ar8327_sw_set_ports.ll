; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_sw_set_ports.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_sw_set_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_val = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.switch_port* }
%struct.switch_port = type { i32, i64 }
%struct.ar8xxx_priv = type { i32*, i64*, i32 }

@SWITCH_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_val*)* @ar8327_sw_set_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8327_sw_set_ports(%struct.switch_dev* %0, %struct.switch_val* %1) #0 {
  %3 = alloca %struct.switch_dev*, align 8
  %4 = alloca %struct.switch_val*, align 8
  %5 = alloca %struct.ar8xxx_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.switch_port*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %3, align 8
  store %struct.switch_val* %1, %struct.switch_val** %4, align 8
  %9 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %10 = call %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev* %9)
  store %struct.ar8xxx_priv* %10, %struct.ar8xxx_priv** %5, align 8
  %11 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %12 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %15 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %94, %2
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %22 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %97

25:                                               ; preds = %19
  %26 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %27 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.switch_port*, %struct.switch_port** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %29, i64 %31
  store %struct.switch_port* %32, %struct.switch_port** %8, align 8
  %33 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %34 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %25
  %41 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %42 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %45 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %48 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %43, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %40
  %54 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %55 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = shl i32 1, %57
  %59 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %60 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %53, %40
  br label %85

64:                                               ; preds = %25
  %65 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %66 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = shl i32 1, %68
  %70 = xor i32 %69, -1
  %71 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %72 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %76 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %79 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %82 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  store i64 %77, i64* %84, align 8
  br label %85

85:                                               ; preds = %64, %63
  %86 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %87 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = shl i32 1, %89
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %19

97:                                               ; preds = %19
  ret i32 0
}

declare dso_local %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
