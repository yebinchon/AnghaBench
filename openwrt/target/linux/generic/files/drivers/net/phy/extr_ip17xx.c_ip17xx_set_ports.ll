; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_set_ports.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_set_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i64 }
%struct.switch_val = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ip17xx_state = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 (%struct.ip17xx_state*)* }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SWITCH_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_val*)* @ip17xx_set_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip17xx_set_ports(%struct.switch_dev* %0, %struct.switch_val* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca %struct.switch_val*, align 8
  %6 = alloca %struct.ip17xx_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store %struct.switch_val* %1, %struct.switch_val** %5, align 8
  %9 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %10 = call %struct.ip17xx_state* @get_state(%struct.switch_dev* %9)
  store %struct.ip17xx_state* %10, %struct.ip17xx_state** %6, align 8
  %11 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %12 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %15 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %13, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %20 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %112

26:                                               ; preds = %18
  %27 = load %struct.ip17xx_state*, %struct.ip17xx_state** %6, align 8
  %28 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %27, i32 0, i32 3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %31 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %101, %26
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %38 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %104

41:                                               ; preds = %35
  %42 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %43 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 1, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.ip17xx_state*, %struct.ip17xx_state** %6, align 8
  %54 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %53, i32 0, i32 3
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %57 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %52
  store i32 %62, i32* %60, align 4
  %63 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %64 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %73 = shl i32 1, %72
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %41
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.ip17xx_state*, %struct.ip17xx_state** %6, align 8
  %79 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* %8, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.ip17xx_state*, %struct.ip17xx_state** %6, align 8
  %85 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %100

88:                                               ; preds = %41
  %89 = load i32, i32* %8, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.ip17xx_state*, %struct.ip17xx_state** %6, align 8
  %92 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.ip17xx_state*, %struct.ip17xx_state** %6, align 8
  %97 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %88, %76
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %35

104:                                              ; preds = %35
  %105 = load %struct.ip17xx_state*, %struct.ip17xx_state** %6, align 8
  %106 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %105, i32 0, i32 2
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32 (%struct.ip17xx_state*)*, i32 (%struct.ip17xx_state*)** %108, align 8
  %110 = load %struct.ip17xx_state*, %struct.ip17xx_state** %6, align 8
  %111 = call i32 %109(%struct.ip17xx_state* %110)
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %104, %23
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.ip17xx_state* @get_state(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
