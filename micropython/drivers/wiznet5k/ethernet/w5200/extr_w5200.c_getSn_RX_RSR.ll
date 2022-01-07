; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/w5200/extr_w5200.c_getSn_RX_RSR.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/w5200/extr_w5200.c_getSn_RX_RSR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getSn_RX_RSR(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @Sn_RX_RSR(i32 %6)
  %8 = call i32 @WIZCHIP_READ(i64 %7)
  %9 = shl i32 %8, 8
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @Sn_RX_RSR(i32 %10)
  %12 = add nsw i64 %11, 1
  %13 = call i32 @WIZCHIP_READ(i64 %12)
  %14 = or i32 %9, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %5
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @Sn_RX_RSR(i32 %18)
  %20 = call i32 @WIZCHIP_READ(i64 %19)
  %21 = shl i32 %20, 8
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @Sn_RX_RSR(i32 %22)
  %24 = add nsw i64 %23, 1
  %25 = call i32 @WIZCHIP_READ(i64 %24)
  %26 = or i32 %21, %25
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %17, %5
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %5, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @WIZCHIP_READ(i64) #1

declare dso_local i64 @Sn_RX_RSR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
