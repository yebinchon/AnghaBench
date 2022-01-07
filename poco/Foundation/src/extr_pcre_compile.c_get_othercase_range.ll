; ModuleID = '/home/carl/AnghaBench/poco/Foundation/src/extr_pcre_compile.c_get_othercase_range.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/src/extr_pcre_compile.c_get_othercase_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i64*, i64*)* @get_othercase_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_othercase_range(i64* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  br label %16

16:                                               ; preds = %38, %4
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @UCD_CASESET(i64 %21)
  store i32 %22, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i64, i64* %10, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %10, align 8
  %27 = load i64*, i64** %8, align 8
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64*, i64** %6, align 8
  store i64 %28, i64* %29, align 8
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %5, align 4
  br label %79

31:                                               ; preds = %20
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @UCD_OTHERCASE(i64 %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %41

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %10, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %10, align 8
  br label %16

41:                                               ; preds = %36, %16
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 -1, i32* %5, align 4
  br label %79

46:                                               ; preds = %41
  %47 = load i64, i64* %11, align 8
  %48 = load i64*, i64** %8, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i64, i64* %11, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %10, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %70, %46
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp sle i64 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @UCD_CASESET(i64 %58)
  store i32 %59, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %10, align 8
  %63 = call i64 @UCD_OTHERCASE(i64 %62)
  %64 = load i64, i64* %12, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61, %57
  br label %73

67:                                               ; preds = %61
  %68 = load i64, i64* %12, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %12, align 8
  br label %70

70:                                               ; preds = %67
  %71 = load i64, i64* %10, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %10, align 8
  br label %53

73:                                               ; preds = %66, %53
  %74 = load i64, i64* %12, align 8
  %75 = sub nsw i64 %74, 1
  %76 = load i64*, i64** %9, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64*, i64** %6, align 8
  store i64 %77, i64* %78, align 8
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %73, %45, %24
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @UCD_CASESET(i64) #1

declare dso_local i64 @UCD_OTHERCASE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
