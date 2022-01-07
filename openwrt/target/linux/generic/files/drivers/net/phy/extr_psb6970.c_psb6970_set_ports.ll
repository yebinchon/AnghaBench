; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_psb6970.c_psb6970_set_ports.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_psb6970.c_psb6970_set_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_val = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.switch_port* }
%struct.switch_port = type { i32, i32 }
%struct.psb6970_priv = type { i32*, i32, i64* }

@SWITCH_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@PSB6970_MAX_VLANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_val*)* @psb6970_set_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb6970_set_ports(%struct.switch_dev* %0, %struct.switch_val* %1) #0 {
  %3 = alloca %struct.switch_dev*, align 8
  %4 = alloca %struct.switch_val*, align 8
  %5 = alloca %struct.psb6970_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.switch_port*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %3, align 8
  store %struct.switch_val* %1, %struct.switch_val** %4, align 8
  %10 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %11 = call %struct.psb6970_priv* @to_psb6970(%struct.switch_dev* %10)
  store %struct.psb6970_priv* %11, %struct.psb6970_priv** %5, align 8
  %12 = load %struct.psb6970_priv*, %struct.psb6970_priv** %5, align 8
  %13 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %16 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %109, %2
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %23 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %112

26:                                               ; preds = %20
  %27 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %28 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.switch_port*, %struct.switch_port** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %30, i64 %32
  store %struct.switch_port* %33, %struct.switch_port** %9, align 8
  %34 = load %struct.switch_port*, %struct.switch_port** %9, align 8
  %35 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %26
  %42 = load %struct.switch_port*, %struct.switch_port** %9, align 8
  %43 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 1, %44
  %46 = load %struct.psb6970_priv*, %struct.psb6970_priv** %5, align 8
  %47 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %101

50:                                               ; preds = %26
  %51 = load %struct.switch_port*, %struct.switch_port** %9, align 8
  %52 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 1, %53
  %55 = xor i32 %54, -1
  %56 = load %struct.psb6970_priv*, %struct.psb6970_priv** %5, align 8
  %57 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %61 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.psb6970_priv*, %struct.psb6970_priv** %5, align 8
  %64 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = load %struct.switch_port*, %struct.switch_port** %9, align 8
  %67 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %65, i64 %69
  store i64 %62, i64* %70, align 8
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %97, %50
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @PSB6970_MAX_VLANS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %79 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %97

83:                                               ; preds = %75
  %84 = load %struct.switch_port*, %struct.switch_port** %9, align 8
  %85 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 1, %86
  %88 = xor i32 %87, -1
  %89 = load %struct.psb6970_priv*, %struct.psb6970_priv** %5, align 8
  %90 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %88
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %83, %82
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %71

100:                                              ; preds = %71
  br label %101

101:                                              ; preds = %100, %41
  %102 = load %struct.switch_port*, %struct.switch_port** %9, align 8
  %103 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 1, %104
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %105
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %101
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %20

112:                                              ; preds = %20
  ret i32 0
}

declare dso_local %struct.psb6970_priv* @to_psb6970(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
