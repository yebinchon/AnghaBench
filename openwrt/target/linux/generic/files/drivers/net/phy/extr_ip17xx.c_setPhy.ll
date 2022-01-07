; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_setPhy.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_setPhy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip17xx_state = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip17xx_state*, i64, i32)* @setPhy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setPhy(%struct.ip17xx_state* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca %struct.ip17xx_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast %struct.TYPE_5__* %5 to i64*
  store i64 %1, i64* %9, align 4
  store %struct.ip17xx_state* %0, %struct.ip17xx_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = bitcast %struct.TYPE_5__* %5 to i64*
  %11 = load i64, i64* %10, align 4
  %12 = call i32 @REG_SUPP(i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EFAULT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %35

17:                                               ; preds = %3
  %18 = load %struct.ip17xx_state*, %struct.ip17xx_state** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ip_phy_write(%struct.ip17xx_state* %18, i32 %20, i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %35

29:                                               ; preds = %17
  %30 = call i32 @mdelay(i32 2)
  %31 = load %struct.ip17xx_state*, %struct.ip17xx_state** %6, align 8
  %32 = bitcast %struct.TYPE_5__* %5 to i64*
  %33 = load i64, i64* %32, align 4
  %34 = call i32 @getPhy(%struct.ip17xx_state* %31, i64 %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %27, %14
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @REG_SUPP(i64) #1

declare dso_local i32 @ip_phy_write(%struct.ip17xx_state*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @getPhy(%struct.ip17xx_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
