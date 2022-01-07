; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c___rtl8366_smi_cleanup.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c___rtl8366_smi_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32, i32, i32, i32 (%struct.rtl8366_smi*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8366_smi*)* @__rtl8366_smi_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rtl8366_smi_cleanup(%struct.rtl8366_smi* %0) #0 {
  %2 = alloca %struct.rtl8366_smi*, align 8
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %2, align 8
  %3 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %4 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %3, i32 0, i32 3
  %5 = load i32 (%struct.rtl8366_smi*, i32)*, i32 (%struct.rtl8366_smi*, i32)** %4, align 8
  %6 = icmp ne i32 (%struct.rtl8366_smi*, i32)* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %9 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %8, i32 0, i32 3
  %10 = load i32 (%struct.rtl8366_smi*, i32)*, i32 (%struct.rtl8366_smi*, i32)** %9, align 8
  %11 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %12 = call i32 %10(%struct.rtl8366_smi* %11, i32 1)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %15 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %20 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gpio_free(i32 %21)
  %23 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %24 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @gpio_free(i32 %25)
  br label %27

27:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
