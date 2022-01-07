; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_phy.c_dev_find_class.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_phy.c_dev_find_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (%struct.device*, i8*)* @dev_find_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @dev_find_class(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.device*, %struct.device** %4, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @dev_is_class(%struct.device* %6, i8* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @get_device(%struct.device* %11)
  %13 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %13, %struct.device** %3, align 8
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call %struct.device* @device_find_child(%struct.device* %15, i8* %16, i64 (%struct.device*, i8*)* @dev_is_class)
  store %struct.device* %17, %struct.device** %3, align 8
  br label %18

18:                                               ; preds = %14, %10
  %19 = load %struct.device*, %struct.device** %3, align 8
  ret %struct.device* %19
}

declare dso_local i64 @dev_is_class(%struct.device*, i8*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local %struct.device* @device_find_child(%struct.device*, i8*, i64 (%struct.device*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
