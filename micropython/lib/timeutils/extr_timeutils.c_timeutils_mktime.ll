; ModuleID = '/home/carl/AnghaBench/micropython/lib/timeutils/extr_timeutils.c_timeutils_mktime.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/timeutils/extr_timeutils.c_timeutils_mktime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @timeutils_mktime(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %12, align 4
  %14 = sdiv i32 %13, 60
  %15 = load i32, i32* %11, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %12, align 4
  %18 = srem i32 %17, 60
  store i32 %18, i32* %12, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = load i32, i32* %12, align 4
  %22 = add nsw i32 %21, 60
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %20, %6
  %26 = load i32, i32* %11, align 4
  %27 = sdiv i32 %26, 60
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = srem i32 %30, 60
  store i32 %31, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 60
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %33, %25
  %39 = load i32, i32* %10, align 4
  %40 = sdiv i32 %39, 24
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = srem i32 %43, 24
  store i32 %44, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 24
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %46, %38
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sdiv i32 %54, 12
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %7, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = srem i32 %59, 12
  store i32 %60, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 12
  store i32 %64, i32* %8, align 4
  %65 = load i64, i64* %7, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %62, %51
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %80, %67
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %73, label %88

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %8, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  store i32 12, i32* %8, align 4
  %78 = load i64, i64* %7, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %77, %73
  %81 = load i64, i64* %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i64 @timeutils_days_in_month(i64 %81, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %9, align 4
  br label %70

88:                                               ; preds = %70
  br label %89

89:                                               ; preds = %110, %88
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i64 @timeutils_days_in_month(i64 %92, i32 %93)
  %95 = icmp sgt i64 %91, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %89
  %97 = load i64, i64* %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i64 @timeutils_days_in_month(i64 %97, i32 %98)
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = sub nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  %106 = icmp eq i32 %105, 13
  br i1 %106, label %107, label %110

107:                                              ; preds = %96
  store i32 1, i32* %8, align 4
  %108 = load i64, i64* %7, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %7, align 8
  br label %110

110:                                              ; preds = %107, %96
  br label %89

111:                                              ; preds = %89
  %112 = load i64, i64* %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %12, align 4
  %118 = call i64 @timeutils_seconds_since_2000(i64 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117)
  ret i64 %118
}

declare dso_local i64 @timeutils_days_in_month(i64, i32) #1

declare dso_local i64 @timeutils_seconds_since_2000(i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
