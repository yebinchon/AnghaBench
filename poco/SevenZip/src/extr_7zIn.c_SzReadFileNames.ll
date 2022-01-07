; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_7zIn.c_SzReadFileNames.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_7zIn.c_SzReadFileNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SZ_ERROR_ARCHIVE = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i64, i64*)* @SzReadFileNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SzReadFileNames(i64* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %49, %4
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = load i64, i64* %11, align 8
  %18 = load i64*, i64** %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  store i64 %17, i64* %20, align 8
  br label %21

21:                                               ; preds = %43, %16
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %26, i32* %5, align 4
  br label %66

27:                                               ; preds = %21
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %11, align 8
  %30 = mul i64 %29, 2
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load i64*, i64** %6, align 8
  %36 = load i64, i64* %11, align 8
  %37 = mul i64 %36, 2
  %38 = add i64 %37, 1
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %46

43:                                               ; preds = %34, %27
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %11, align 8
  br label %21

46:                                               ; preds = %42
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %11, align 8
  br label %49

49:                                               ; preds = %46
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %10, align 8
  br label %12

52:                                               ; preds = %12
  %53 = load i64, i64* %11, align 8
  %54 = load i64*, i64** %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @SZ_OK, align 4
  br label %64

62:                                               ; preds = %52
  %63 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %25
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
