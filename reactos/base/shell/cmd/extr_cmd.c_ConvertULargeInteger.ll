; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_cmd.c_ConvertULargeInteger.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_cmd.c_ConvertULargeInteger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nNumberGroups = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@cThousandSeparator = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConvertULargeInteger(i32 %0, i64* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [39 x i64], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %84

16:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @nNumberGroups, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* @nNumberGroups, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %9, align 8
  br label %22

22:                                               ; preds = %20, %16
  br label %23

23:                                               ; preds = %54, %22
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load i32, i32* @nNumberGroups, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %12, align 4
  %35 = load i64, i64* @cThousandSeparator, align 8
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = sub nsw i32 38, %36
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [39 x i64], [39 x i64]* %10, i64 0, i64 %39
  store i64 %35, i64* %40, align 8
  br label %41

41:                                               ; preds = %30, %27, %23
  %42 = load i32, i32* %6, align 4
  %43 = srem i32 %42, 10
  %44 = sext i32 %43 to i64
  %45 = call i64 @_T(i8 signext 48)
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  %49 = sub nsw i32 38, %47
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [39 x i64], [39 x i64]* %10, i64 0, i64 %50
  store i64 %46, i64* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sdiv i32 %52, 10
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %23, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp sgt i32 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %62, %57
  %66 = load i64*, i64** %7, align 8
  %67 = getelementptr inbounds [39 x i64], [39 x i64]* %10, i64 0, i64 0
  %68 = getelementptr inbounds i64, i64* %67, i64 39
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = sub i64 0, %70
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @memcpy(i64* %66, i64* %72, i32 %76)
  %78 = call i64 @_T(i8 signext 0)
  %79 = load i64*, i64** %7, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  store i64 %78, i64* %82, align 8
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %65, %15
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i64 @_T(i8 signext) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
