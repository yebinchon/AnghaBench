; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mktitanimg.c_cs_calc_buf_sum.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mktitanimg.c_cs_calc_buf_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crctab = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cs_calc_buf_sum(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %7, align 8
  br label %11

11:                                               ; preds = %15, %2
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %4, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load i64, i64* %5, align 8
  %17 = shl i64 %16, 8
  %18 = load i64*, i64** @crctab, align 8
  %19 = load i64, i64* %5, align 8
  %20 = lshr i64 %19, 24
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  %23 = load i8, i8* %21, align 1
  %24 = sext i8 %23 to i64
  %25 = xor i64 %20, %24
  %26 = and i64 %25, 255
  %27 = getelementptr inbounds i64, i64* %18, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = xor i64 %17, %28
  store i64 %29, i64* %5, align 8
  br label %11

30:                                               ; preds = %11
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load i64, i64* %5, align 8
  %36 = shl i64 %35, 8
  %37 = load i64*, i64** @crctab, align 8
  %38 = load i64, i64* %5, align 8
  %39 = lshr i64 %38, 24
  %40 = load i64, i64* %7, align 8
  %41 = xor i64 %39, %40
  %42 = and i64 %41, 255
  %43 = getelementptr inbounds i64, i64* %37, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = xor i64 %36, %44
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %34
  %47 = load i64, i64* %7, align 8
  %48 = lshr i64 %47, 8
  store i64 %48, i64* %7, align 8
  br label %31

49:                                               ; preds = %31
  %50 = load i64, i64* %5, align 8
  %51 = xor i64 %50, -1
  %52 = and i64 %51, 4294967295
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  ret i64 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
