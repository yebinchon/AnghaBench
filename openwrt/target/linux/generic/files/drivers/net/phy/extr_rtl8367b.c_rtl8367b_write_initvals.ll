; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_write_initvals.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_write_initvals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }
%struct.rtl8367b_initval = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, %struct.rtl8367b_initval*, i32)* @rtl8367b_write_initvals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367b_write_initvals(%struct.rtl8366_smi* %0, %struct.rtl8367b_initval* %1, i32 %2) #0 {
  %4 = alloca %struct.rtl8366_smi*, align 8
  %5 = alloca %struct.rtl8367b_initval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %4, align 8
  store %struct.rtl8367b_initval* %1, %struct.rtl8367b_initval** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %28, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %15 = load %struct.rtl8367b_initval*, %struct.rtl8367b_initval** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.rtl8367b_initval, %struct.rtl8367b_initval* %15, i64 %17
  %19 = getelementptr inbounds %struct.rtl8367b_initval, %struct.rtl8367b_initval* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rtl8367b_initval*, %struct.rtl8367b_initval** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.rtl8367b_initval, %struct.rtl8367b_initval* %21, i64 %23
  %25 = getelementptr inbounds %struct.rtl8367b_initval, %struct.rtl8367b_initval* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @REG_WR(%struct.rtl8366_smi* %14, i32 %20, i32 %26)
  br label %28

28:                                               ; preds = %13
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %9

31:                                               ; preds = %9
  ret i32 0
}

declare dso_local i32 @REG_WR(%struct.rtl8366_smi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
