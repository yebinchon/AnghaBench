; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_format.c_updateAddr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_format.c_updateAddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32*, i32, i32, i64*, i64*)* @updateAddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @updateAddr(i32* %0, i32 %1, i32 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca float, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  store float 0.000000e+00, float* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @THRESHOLD, align 4
  %15 = sub nsw i32 %14, 7
  %16 = icmp sge i32 %13, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @THRESHOLD, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @THRESHOLD, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %7, align 4
  br label %26

25:                                               ; preds = %17, %5
  store i32 999, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp uge i64 %28, 4
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = bitcast float* %11 to i32*
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @r_mem_swaporcopy(i32* %31, i32* %32, i32 4, i32 %33)
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i64*, i64** %9, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %39, 3
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @r_read_ble32(i32* %42, i32 %43)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64*, i64** %9, align 8
  store i64 %45, i64* %46, align 8
  br label %47

47:                                               ; preds = %41, %38, %35
  %48 = load i64*, i64** %10, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp sgt i32 %51, 7
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @r_read_ble64(i32* %54, i32 %55)
  %57 = load i64*, i64** %10, align 8
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %53, %50, %47
  %59 = load float, float* %11, align 4
  ret float %59
}

declare dso_local i32 @r_mem_swaporcopy(i32*, i32*, i32, i32) #1

declare dso_local i64 @r_read_ble32(i32*, i32) #1

declare dso_local i64 @r_read_ble64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
