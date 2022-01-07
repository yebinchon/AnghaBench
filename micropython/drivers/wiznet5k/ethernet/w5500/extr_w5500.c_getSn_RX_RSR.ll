; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/w5500/extr_w5500.c_getSn_RX_RSR.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/w5500/extr_w5500.c_getSn_RX_RSR.c"
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

5:                                                ; preds = %30, %1
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @Sn_RX_RSR(i32 %6)
  %8 = call i32 @WIZCHIP_READ(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = shl i32 %9, 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @Sn_RX_RSR(i32 %11)
  %13 = call i32 @WIZCHIP_OFFSET_INC(i32 %12, i32 1)
  %14 = call i32 @WIZCHIP_READ(i32 %13)
  %15 = add nsw i32 %10, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %5
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @Sn_RX_RSR(i32 %19)
  %21 = call i32 @WIZCHIP_READ(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = shl i32 %22, 8
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @Sn_RX_RSR(i32 %24)
  %26 = call i32 @WIZCHIP_OFFSET_INC(i32 %25, i32 1)
  %27 = call i32 @WIZCHIP_READ(i32 %26)
  %28 = add nsw i32 %23, %27
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %18, %5
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %5, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @WIZCHIP_READ(i32) #1

declare dso_local i32 @Sn_RX_RSR(i32) #1

declare dso_local i32 @WIZCHIP_OFFSET_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
