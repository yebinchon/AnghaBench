; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_reset_vlan_config.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_reset_vlan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip17xx_state = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.TYPE_6__*, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@MAX_VLANS = common dso_local global i32 0, align 4
@MAX_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip17xx_state*)* @ip17xx_reset_vlan_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip17xx_reset_vlan_config(%struct.ip17xx_state* %0) #0 {
  %2 = alloca %struct.ip17xx_state*, align 8
  %3 = alloca i32, align 4
  store %struct.ip17xx_state* %0, %struct.ip17xx_state** %2, align 8
  %4 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %5 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %4, i32 0, i32 5
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %10 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %9, i32 0, i32 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 1, %13
  %15 = sub nsw i32 %14, 1
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %8
  %18 = phi i32 [ %15, %8 ], [ 0, %16 ]
  %19 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %20 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %22 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %49, %17
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @MAX_VLANS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %29 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %3, align 4
  br label %40

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 16, %39 ]
  %42 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %43 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %42, i32 0, i32 3
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %41, i32* %48, align 4
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %23

52:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %65, %52
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @MAX_PORTS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %59 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %53

68:                                               ; preds = %53
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
