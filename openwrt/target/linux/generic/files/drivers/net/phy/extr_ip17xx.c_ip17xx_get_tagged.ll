; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_get_tagged.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_get_tagged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ip17xx_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @ip17xx_get_tagged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip17xx_get_tagged(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca %struct.switch_attr*, align 8
  %6 = alloca %struct.switch_val*, align 8
  %7 = alloca %struct.ip17xx_state*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %5, align 8
  store %struct.switch_val* %2, %struct.switch_val** %6, align 8
  %8 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %9 = call %struct.ip17xx_state* @get_state(%struct.switch_dev* %8)
  store %struct.ip17xx_state* %9, %struct.ip17xx_state** %7, align 8
  %10 = load %struct.ip17xx_state*, %struct.ip17xx_state** %7, align 8
  %11 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %14 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %12, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %3
  %20 = load %struct.ip17xx_state*, %struct.ip17xx_state** %7, align 8
  %21 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %24 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %22, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %31 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 3, i32* %32, align 4
  br label %37

33:                                               ; preds = %19
  %34 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %35 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %29
  br label %57

38:                                               ; preds = %3
  %39 = load %struct.ip17xx_state*, %struct.ip17xx_state** %7, align 8
  %40 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %43 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %41, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %50 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  br label %56

52:                                               ; preds = %38
  %53 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %54 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 2, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %37
  ret i32 0
}

declare dso_local %struct.ip17xx_state* @get_state(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
