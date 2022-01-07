; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/w5200/extr_w5200.c_wiz_send_data.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/w5200/extr_w5200.c_wiz_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMASK = common dso_local global i64 0, align 8
@SSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiz_send_data(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %58

14:                                               ; preds = %3
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @getSn_TX_WR(i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @SMASK, align 8
  %19 = and i64 %17, %18
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @SBASE(i32 %21)
  %23 = add nsw i64 %20, %22
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* @SSIZE, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %14
  %30 = load i64, i64* @SSIZE, align 8
  %31 = load i64, i64* %8, align 8
  %32 = sub nsw i64 %30, %31
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @WIZCHIP_WRITE_BUF(i64 %33, i32* %34, i64 %35)
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @SBASE(i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %10, align 8
  %44 = sub nsw i64 %42, %43
  %45 = call i32 @WIZCHIP_WRITE_BUF(i64 %38, i32* %41, i64 %44)
  br label %51

46:                                               ; preds = %14
  %47 = load i64, i64* %9, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @WIZCHIP_WRITE_BUF(i64 %47, i32* %48, i64 %49)
  br label %51

51:                                               ; preds = %46, %29
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* %7, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @setSn_TX_WR(i32 %55, i64 %56)
  br label %58

58:                                               ; preds = %51, %13
  ret void
}

declare dso_local i64 @getSn_TX_WR(i32) #1

declare dso_local i64 @SBASE(i32) #1

declare dso_local i32 @WIZCHIP_WRITE_BUF(i64, i32*, i64) #1

declare dso_local i32 @setSn_TX_WR(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
