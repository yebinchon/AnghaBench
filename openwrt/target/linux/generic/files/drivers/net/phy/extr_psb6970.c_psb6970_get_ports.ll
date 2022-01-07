; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_psb6970.c_psb6970_get_ports.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_psb6970.c_psb6970_get_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_val = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.switch_port* }
%struct.switch_port = type { i32, i32 }
%struct.psb6970_priv = type { i32*, i32 }

@PSB6970_NUM_PORTS = common dso_local global i32 0, align 4
@SWITCH_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_val*)* @psb6970_get_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb6970_get_ports(%struct.switch_dev* %0, %struct.switch_val* %1) #0 {
  %3 = alloca %struct.switch_dev*, align 8
  %4 = alloca %struct.switch_val*, align 8
  %5 = alloca %struct.psb6970_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.switch_port*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %3, align 8
  store %struct.switch_val* %1, %struct.switch_val** %4, align 8
  %9 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %10 = call %struct.psb6970_priv* @to_psb6970(%struct.switch_dev* %9)
  store %struct.psb6970_priv* %10, %struct.psb6970_priv** %5, align 8
  %11 = load %struct.psb6970_priv*, %struct.psb6970_priv** %5, align 8
  %12 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %15 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %20 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %61, %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @PSB6970_NUM_PORTS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %64

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 1, %27
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %61

32:                                               ; preds = %25
  %33 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %34 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.switch_port*, %struct.switch_port** %35, align 8
  %37 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %38 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %36, i64 %39
  store %struct.switch_port* %41, %struct.switch_port** %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %44 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.psb6970_priv*, %struct.psb6970_priv** %5, align 8
  %46 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %32
  %53 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %54 = shl i32 1, %53
  %55 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %56 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %60

57:                                               ; preds = %32
  %58 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %59 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %52
  br label %61

61:                                               ; preds = %60, %31
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %21

64:                                               ; preds = %21
  ret i32 0
}

declare dso_local %struct.psb6970_priv* @to_psb6970(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
