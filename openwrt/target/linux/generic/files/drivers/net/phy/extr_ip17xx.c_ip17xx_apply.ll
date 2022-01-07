; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_apply.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.ip17xx_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*)* @ip17xx_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip17xx_apply(%struct.switch_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.switch_dev*, align 8
  %4 = alloca %struct.ip17xx_state*, align 8
  %5 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %3, align 8
  %6 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %7 = call %struct.ip17xx_state* @get_state(%struct.switch_dev* %6)
  store %struct.ip17xx_state* %7, %struct.ip17xx_state** %4, align 8
  %8 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %9 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @REG_SUPP(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %1
  %16 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %17 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %18 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @getPhy(%struct.ip17xx_state* %16, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %45

27:                                               ; preds = %15
  %28 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %29 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %37 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %38 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @setPhy(%struct.ip17xx_state* %36, i32 %41, i32 %42)
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %27, %25
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.ip17xx_state* @get_state(%struct.switch_dev*) #1

declare dso_local i64 @REG_SUPP(i32) #1

declare dso_local i32 @getPhy(%struct.ip17xx_state*, i32) #1

declare dso_local i32 @setPhy(%struct.ip17xx_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
