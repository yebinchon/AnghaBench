; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_mpMultSub.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_mpMultSub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DIGIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i64*, i64, i32)* @mpMultSub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mpMultSub(i64 %0, i64* %1, i64* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [2 x i64], align 16
  %14 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* %10, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i64, i64* %7, align 8
  store i64 %18, i64* %6, align 8
  br label %86

19:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %78, %19
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %81

24:                                               ; preds = %20
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %26 = load i64, i64* %10, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = load i32, i32* %14, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @spMultiply(i64* %25, i64 %26, i64 %31)
  %33 = load i64, i64* %12, align 8
  %34 = load i64*, i64** %8, align 8
  %35 = load i32, i32* %14, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, %33
  store i64 %39, i64* %37, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = load i32, i32* %14, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MAX_DIGIT, align 8
  %46 = load i64, i64* %12, align 8
  %47 = sub nsw i64 %45, %46
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %24
  store i64 1, i64* %12, align 8
  br label %51

50:                                               ; preds = %24
  store i64 0, i64* %12, align 8
  br label %51

51:                                               ; preds = %50, %49
  %52 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %53 = load i64, i64* %52, align 16
  %54 = load i64*, i64** %8, align 8
  %55 = load i32, i32* %14, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, %53
  store i64 %59, i64* %57, align 8
  %60 = load i64*, i64** %8, align 8
  %61 = load i32, i32* %14, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MAX_DIGIT, align 8
  %66 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %67 = load i64, i64* %66, align 16
  %68 = sub nsw i64 %65, %67
  %69 = icmp sgt i64 %64, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %51
  %71 = load i64, i64* %12, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %12, align 8
  br label %73

73:                                               ; preds = %70, %51
  %74 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %12, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %12, align 8
  br label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %14, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %20

81:                                               ; preds = %20
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %7, align 8
  %84 = sub nsw i64 %83, %82
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* %7, align 8
  store i64 %85, i64* %6, align 8
  br label %86

86:                                               ; preds = %81, %17
  %87 = load i64, i64* %6, align 8
  ret i64 %87
}

declare dso_local i32 @spMultiply(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
